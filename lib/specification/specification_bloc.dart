import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slasher/database/database_manager.dart';
import 'package:slasher/models/detail.dart';

part 'specification_event.dart';
part 'specification_state.dart';
part 'specification_bloc.freezed.dart';

class SpecificationBloc extends Bloc<SpecificationEvent, SpecificationState> {
  SpecificationBloc() : super(SpecificationState.initial()) {
    on<_DetailsLoaded>(_onDetailsLoaded);
    on<_DetailSelected>(_onDetailSelected);
    on<_CommentUpdated>(_onCommentUpdated);
  }

  Future<void> _onDetailsLoaded(_DetailsLoaded event, Emitter<SpecificationState> emit) async {
    emit(state.copyWith(isLoading: true, hasError: false, selectedDetail: null));

    try {
      final details = await _getDetailsGroupedByMonth();
      emit(state.copyWith(
        detailsByMonth: details,
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

  Future<void> _onCommentUpdated(_CommentUpdated event, Emitter<SpecificationState> emit) async {
    try {
      final dbManager = DatabaseManager.instance;
      final detail = await dbManager.readDetail(event.detailId);

      if (detail != null) {
        detail.comment = event.comment;
        await dbManager.updateDetail(detail);

        emit(state.copyWith(
          selectedDetail: detail.copyWith(comment: event.comment),
        ));
      }
    } catch (_) {
      emit(state.copyWith(hasError: true));
    }
  }

  Future<void> _onDetailSelected(_DetailSelected event, Emitter<SpecificationState> emit) async {
    try {
      final detail = await DatabaseManager.instance.readDetail(event.detailId);
      emit(state.copyWith(selectedDetail: detail));
    } catch (_) {
      emit(state.copyWith(hasError: true));
    }
  }

  Future<Map<String, List<Detail>>> _getDetailsGroupedByMonth() async {
    final List<Detail> details = await DatabaseManager.instance.getDetails();

    Map<String, List<Detail>> groupedDetails = {};

    for (var detail in details) {
      final monthIndex = detail.createdAt.month - 1;
      final year = detail.createdAt.year;

      String month = "${russianMonthNames[monthIndex]} $year";

      if (groupedDetails.containsKey(month)) {
        groupedDetails[month]!.add(detail);
      } else {
        groupedDetails[month] = [detail];
      }
    }

    List<MapEntry<String, List<Detail>>> sortedEntries = groupedDetails.entries.toList()
      ..sort((a, b) {
        final aMonthIndex = russianMonthNames.indexOf(a.key.split(' ')[0]);
        final aYear = int.parse(a.key.split(' ')[1]);

        final bMonthIndex = russianMonthNames.indexOf(b.key.split(' ')[0]);
        final bYear = int.parse(b.key.split(' ')[1]);

        if (aYear != bYear) {
          return bYear.compareTo(aYear);
        }
        return bMonthIndex.compareTo(aMonthIndex);
      });

    return LinkedHashMap<String, List<Detail>>.fromEntries(sortedEntries);
  }
}

final List<String> russianMonthNames = [
  'январь',
  'февраль',
  'март',
  'апрель',
  'май',
  'июнь',
  'июль',
  'август',
  'сентябрь',
  'октябрь',
  'ноябрь',
  'декабрь'
];
