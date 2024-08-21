// specification_state.dart
part of 'specification_bloc.dart';

@freezed
class SpecificationState with _$SpecificationState {
  const factory SpecificationState({
    required Map<String, List<Detail>> detailsByMonth,
    Detail? selectedDetail,
    required bool isLoading,
    required bool hasError,
  }) = _SpecificationState;

  factory SpecificationState.initial() {
    return const SpecificationState(
      detailsByMonth: {},
      selectedDetail: null,
      isLoading: false,
      hasError: false,
    );
  }
}
