import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:master_helper/features/detail_form/widgets/detail_dto.dart';
import 'package:master_helper/core/models/detail_field.dart';
import 'package:master_helper/core/database/database_manager.dart';
import 'package:master_helper/core/models/detail.dart';

part 'detail_form_event.dart';
part 'detail_form_state.dart';
part 'detail_form_bloc.freezed.dart';

class DetailFormBloc extends Bloc<DetailFormEvent, DetailFormState> {
  final DatabaseManager dbManager = DatabaseManager.instance;

  int _nextTemporaryId = -1;

  DetailFormBloc() : super(DetailFormState.initial()) {
    on<_ViewLoaded>(_onViewLoaded);
    on<_MainDetailNameChanged>(_onMainDetailNameChanged);
    on<_AddButtonTapped>(_onAddButtonTapped);
    on<_SubmitButtonTapped>(_onSubmitButtonTapped);
    on<_DeleteButtonTapped>(_onDeleteButtonTapped);
    on<_DetailUpdated>(_onDetailUpdated);
  }

  Future<void> _onViewLoaded(_ViewLoaded event, Emitter<DetailFormState> emit) async {
    if (event.detailId == null) return;

    try {
      final mainDetail = await dbManager.readDetail(event.detailId!);

      if (mainDetail == null) {
        emit(state.copyWith(
          mainDetail: DetailDto(id: _generateTemporaryId()),
          subDetails: [],
        ));
        return;
      }

      final subDetails = await Future.wait(
        mainDetail.subDetailIds.map((id) => dbManager.readDetail(id)),
      );

      final mainDetailShort = DetailDto().fromDetail(mainDetail);
      final subDetailsShort = subDetails.map((sub) => DetailDto().fromDetail(sub)).toList();

      emit(state.copyWith(
          mainDetail: mainDetailShort, subDetails: subDetailsShort, mainDetailName: mainDetailShort.name ?? ''));
    } catch (e, s) {
      if (kDebugMode) {
        print(e);
        print(s);
      }
    }
  }

  Future<void> _onMainDetailNameChanged(_MainDetailNameChanged event, Emitter<DetailFormState> emit) async {
    emit(state.copyWith(mainDetailName: event.mainDetailName));
  }

  Future<void> _onAddButtonTapped(_AddButtonTapped event, Emitter<DetailFormState> emit) async {
    final updatedSubDetails = List<DetailDto>.from(state.subDetails)..add(DetailDto(id: _generateTemporaryId()));
    emit(state.copyWith(subDetails: updatedSubDetails));
  }

  Future<void> _onDetailUpdated(_DetailUpdated event, Emitter<DetailFormState> emit) async {
    if (event.detailId == state.mainDetail.id) {
      final updatedMainDetail = state.mainDetail.copyWith();
      updatedMainDetail.updateField(event.field, event.value);

      emit(state.copyWith(mainDetail: updatedMainDetail));
    } else {
      final updatedSubDetails = state.subDetails.map((detail) {
        if (detail.id == event.detailId) {
          final updatedDetail = detail.copyWith();
          updatedDetail.updateField(event.field, event.value);
          return updatedDetail;
        }
        return detail;
      }).toList();

      emit(state.copyWith(subDetails: updatedSubDetails));
    }
  }

  Future<void> _onSubmitButtonTapped(_SubmitButtonTapped event, Emitter<DetailFormState> emit) async {
    emit(state.copyWith(
      isSubmitting: true,
    ));
    int parentId;
    List<int> subDetailIds = [];

    // Create or update the main detail in the database
    if (state.mainDetail.id == null) {
      parentId = await dbManager.createDetail(state.mainDetail);
    } else {
      parentId = await dbManager.updateDetail(state.mainDetail.id!, state.mainDetail.toMap());
      parentId = state.mainDetail.id!;
    }

    String orderNumber = state.mainDetail.orderNumber!;

    // Add subdetails with the main detail's ID
    for (var subDetail in state.subDetails) {
      subDetail.orderNumber = orderNumber;
      subDetail.parentId = parentId;
      int subDetailId;
      if (subDetail.id!.isNegative) {
        subDetail.id = null;
        subDetailId = await dbManager.createDetail(subDetail);
        subDetailIds.add(subDetailId);
      } else {
        subDetailId = await dbManager.updateDetail(subDetail.id!, subDetail.toMap());
        subDetailIds.add(subDetail.id!);
      }
    }

    // Update the main detail with the subdetail IDs
    await dbManager.updateDetail(parentId, {DetailField.subDetailIds: jsonEncode(subDetailIds)});

    emit(state.copyWith(
      isSubmitting: false,
      isSaved: true,
    ));
  }

  Future<void> _onDeleteButtonTapped(
    _DeleteButtonTapped event,
    Emitter<DetailFormState> emit,
  ) async {
    final detailId = event.detailId;
    Detail? detail = await dbManager.readDetail(detailId);

    if (detail != null) {
      await dbManager.deleteDetail(detailId);
    }

    final updatedSubDetails = state.subDetails.where((detail) => detail.id != detailId).toList();
    emit(state.copyWith(subDetails: updatedSubDetails));
  }

  // When add button is tapped, we need to assign some id for our detail to be able to delete it
  // This ID is temporary as the real one will be assigned by the database
  int _generateTemporaryId() {
    return _nextTemporaryId--;
  }
}
