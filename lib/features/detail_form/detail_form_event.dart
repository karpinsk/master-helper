part of 'detail_form_bloc.dart';

@freezed
class DetailFormEvent with _$DetailFormEvent {
  const factory DetailFormEvent.viewLoaded({int? detailId}) = _ViewLoaded;
  const factory DetailFormEvent.mainDetailNameChanged({required String mainDetailName}) = _MainDetailNameChanged;
  const factory DetailFormEvent.addButtonTapped() = _AddButtonTapped;
  const factory DetailFormEvent.submitButtonTapped() = _SubmitButtonTapped;
  const factory DetailFormEvent.deleteButtonTapped({required int detailId}) = _DeleteButtonTapped;
  const factory DetailFormEvent.detailUpdated(
      {required int? detailId, required DetailField field, required dynamic value}) = _DetailUpdated;
  const factory DetailFormEvent.imageSourceSelected({
    required int detailId,
    required String source,
    @Default(true) bool isDrawing,
  }) = _ImageSourceSelected;
}
