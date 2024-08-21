// specification_event.dart
part of 'specification_bloc.dart';

@freezed
class SpecificationEvent with _$SpecificationEvent {
  const factory SpecificationEvent.loadDetails() = _LoadDetails;
  const factory SpecificationEvent.selectDetail(int detailId) = _SelectDetail;
  const factory SpecificationEvent.updateComment(int detailId, String? comment) = _UpdateComment;
}
