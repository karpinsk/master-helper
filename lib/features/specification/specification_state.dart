part of 'specification_bloc.dart';

@freezed
class SpecificationState with _$SpecificationState {
  const factory SpecificationState({
    required List<Detail> details,
    Detail? selectedDetail,
    required bool isLoading,
    String? searchQuery,
    required bool hasError,
  }) = _SpecificationState;

  factory SpecificationState.initial() {
    return const SpecificationState(
      details: [],
      selectedDetail: null,
      isLoading: false,
      searchQuery: null,
      hasError: false,
    );
  }
}
