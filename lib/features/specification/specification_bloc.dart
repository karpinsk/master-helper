import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:master_helper/core/models/detail_field.dart';
import 'package:master_helper/core/database/database_manager.dart';
import 'package:master_helper/core/models/detail.dart';
import 'package:master_helper/core/models/detail_status.dart';

part 'specification_event.dart';
part 'specification_state.dart';
part 'specification_bloc.freezed.dart';

class SpecificationBloc extends Bloc<SpecificationEvent, SpecificationState> {
  SpecificationBloc() : super(SpecificationState.initial()) {
    on<_DetailsLoaded>(_onDetailsLoaded);
    on<_DetailSelected>(_onDetailSelected);
    on<_CommentUpdated>(_onCommentUpdated);
    on<_TechProcessUpdated>(_onTechProcessUpdated);
    on<_DetailStatusUpdated>(_onDetailStatusUpdated);
  }

  final dbManager = DatabaseManager.instance;

  Future<void> _onDetailsLoaded(_DetailsLoaded event, Emitter<SpecificationState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
      selectedDetail: null,
    ));

    try {
      final details = await dbManager.getDetails();
      emit(state.copyWith(
        details: List.of(details),
        isLoading: false,
        hasError: false,
      ));
    } catch (error) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
    }
  }

  Future<void> _onDetailSelected(_DetailSelected event, Emitter<SpecificationState> emit) async {
    try {
      final detail = await dbManager.readDetail(event.detailId);
      final details = await dbManager.getDetails();

      emit(state.copyWith(
        details: details,
        selectedDetail: detail,
        isLoading: false,
      ));
    } catch (_) {
      emit(state.copyWith(hasError: true));
    }
  }

  Future<void> _onDetailStatusUpdated(_DetailStatusUpdated event, Emitter<SpecificationState> emit) async {
    try {
      final detail = await dbManager.readDetail(event.detailId);

      if (detail != null) {
        await dbManager.updateDetail(detail.id!, {DetailField.status: event.status.index});
        final details = await dbManager.getDetails();
        emit(state.copyWith(details: details));
      }
    } catch (_) {
      emit(state.copyWith(hasError: true));
    }
  }

  Future<void> _onCommentUpdated(_CommentUpdated event, Emitter<SpecificationState> emit) async {
    try {
      final detail = await dbManager.readDetail(event.detailId);

      if (detail != null) {
        await dbManager.updateDetail(
          detail.id!,
          {DetailField.comment: event.comment},
        );

        emit(state.copyWith(
          selectedDetail: detail.copyWith(comment: event.comment),
        ));
      }
    } catch (_) {
      emit(state.copyWith(hasError: true));
    }
  }

  Future<void> _onTechProcessUpdated(_TechProcessUpdated event, Emitter<SpecificationState> emit) async {
    try {
      final detail = await dbManager.readDetail(event.detailId);

      if (detail != null) {
        detail.techProcess = event.techProcess;
        await dbManager.updateDetail(detail.id!, {DetailField.techProcess: event.techProcess});

        emit(state.copyWith(
          selectedDetail: detail.copyWith(techProcess: event.techProcess),
        ));
      }
    } catch (_) {
      emit(state.copyWith(hasError: true));
    }
  }
}
