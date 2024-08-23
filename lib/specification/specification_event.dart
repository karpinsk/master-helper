part of 'specification_bloc.dart';

@freezed
class SpecificationEvent with _$SpecificationEvent {
  const factory SpecificationEvent.detailsLoaded() = _DetailsLoaded;
  const factory SpecificationEvent.detailSelected(int detailId) = _DetailSelected;
  const factory SpecificationEvent.commentUpdated(int detailId, String? comment) = _CommentUpdated;
}
