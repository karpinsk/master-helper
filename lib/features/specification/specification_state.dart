part of 'specification_bloc.dart';

@freezed
class SpecificationState with _$SpecificationState {
  const factory SpecificationState({
    required List<Detail> details,
    Detail? selectedDetail,
    required bool isLoading,
    required bool hasError,
  }) = _SpecificationState;

  factory SpecificationState.initial() {
    return const SpecificationState(
      details: [],
      selectedDetail: null,
      isLoading: true,
      hasError: false,
    );
  }
}
