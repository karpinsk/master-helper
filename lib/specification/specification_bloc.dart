// specification_bloc.dart
import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slasher/database/database_helper.dart';
import 'package:slasher/models/detail.dart';

part 'specification_event.dart';
part 'specification_state.dart';
part 'specification_bloc.freezed.dart';

class SpecificationBloc extends Bloc<SpecificationEvent, SpecificationState> {
  SpecificationBloc() : super(SpecificationState.initial()) {
    on<_LoadDetails>(_onLoadDetails);
    on<_SelectDetail>(_onSelectDetail);
    on<_UpdateComment>(_onUpdateComment);
  }

  Future<void> _onLoadDetails(_LoadDetails event, Emitter<SpecificationState> emit) async {
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

  Future<void> _onUpdateComment(_UpdateComment event, Emitter<SpecificationState> emit) async {
    try {
      final detail = await DatabaseHelper.instance.readDetail(event.detailId);

      if (detail != null) {
        detail.comment = event.comment;
        await DatabaseHelper.instance.updateDetail(detail);

        emit(state.copyWith(
          selectedDetail: detail.copyWith(comment: event.comment),
        ));
      }
    } catch (_) {
      emit(state.copyWith(hasError: true));
    }
  }

  Future<void> _onSelectDetail(_SelectDetail event, Emitter<SpecificationState> emit) async {
    try {
      final detail = await DatabaseHelper.instance.readDetail(event.detailId);
      emit(state.copyWith(selectedDetail: detail));
    } catch (_) {
      emit(state.copyWith(hasError: true));
    }
  }

  Future<Map<String, List<Detail>>> _getDetailsGroupedByMonth() async {
    final dbHelper = DatabaseHelper.instance;
    final List<Detail> details = await dbHelper.getDetails();

    Map<String, List<Detail>> groupedDetails = {};

    for (var detail in details) {
      // Get the month and year from the createdAt date
      final monthIndex = detail.createdAt.month - 1; // Convert to 0-based index
      final year = detail.createdAt.year;

      // Format the month name in Russian
      String month = "${russianMonthNames[monthIndex]} $year";

      if (groupedDetails.containsKey(month)) {
        groupedDetails[month]!.add(detail);
      } else {
        groupedDetails[month] = [detail];
      }
    }

    // Sort entries by year and month in descending order
    List<MapEntry<String, List<Detail>>> sortedEntries = groupedDetails.entries.toList()
      ..sort((a, b) {
        // Extract month and year from the key
        final aMonthIndex = russianMonthNames.indexOf(a.key.split(' ')[0]);
        final aYear = int.parse(a.key.split(' ')[1]);

        final bMonthIndex = russianMonthNames.indexOf(b.key.split(' ')[0]);
        final bYear = int.parse(b.key.split(' ')[1]);

        // Compare years first, then months in descending order
        if (aYear != bYear) {
          return bYear.compareTo(aYear);
        }
        return bMonthIndex.compareTo(aMonthIndex);
      });

    // Return as a LinkedHashMap to preserve insertion order
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
