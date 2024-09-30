part of 'detail_form_bloc.dart';

@freezed
class DetailFormState with _$DetailFormState {
  const factory DetailFormState({
    required DetailDto mainDetail,
    required List<DetailDto> subDetails,
    required String mainDetailName,
    required bool isSaved,
    required bool isSubmitting,
  }) = _DetailFormState;

  factory DetailFormState.initial() {
    return DetailFormState(
      mainDetail: DetailDto(),
      subDetails: [],
      mainDetailName: '',
      isSubmitting: false,
      isSaved: false,
    );
  }
}