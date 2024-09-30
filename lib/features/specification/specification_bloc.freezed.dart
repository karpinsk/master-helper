// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpecificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() detailsLoaded,
    required TResult Function(int detailId) detailSelected,
    required TResult Function(int detailId, String comment) commentUpdated,
    required TResult Function(int detailId, String techProcess)
        techProcessUpdated,
    required TResult Function(String? orderNumber) searchQueryChanged,
    required TResult Function(int detailId, DetailStatus status)
        detailStatusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? detailsLoaded,
    TResult? Function(int detailId)? detailSelected,
    TResult? Function(int detailId, String comment)? commentUpdated,
    TResult? Function(int detailId, String techProcess)? techProcessUpdated,
    TResult? Function(String? orderNumber)? searchQueryChanged,
    TResult? Function(int detailId, DetailStatus status)? detailStatusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? detailsLoaded,
    TResult Function(int detailId)? detailSelected,
    TResult Function(int detailId, String comment)? commentUpdated,
    TResult Function(int detailId, String techProcess)? techProcessUpdated,
    TResult Function(String? orderNumber)? searchQueryChanged,
    TResult Function(int detailId, DetailStatus status)? detailStatusUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_DetailSelected value) detailSelected,
    required TResult Function(_CommentUpdated value) commentUpdated,
    required TResult Function(_TechProcessUpdated value) techProcessUpdated,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
    required TResult Function(_DetailStatusUpdated value) detailStatusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_DetailSelected value)? detailSelected,
    TResult? Function(_CommentUpdated value)? commentUpdated,
    TResult? Function(_TechProcessUpdated value)? techProcessUpdated,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(_DetailStatusUpdated value)? detailStatusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_DetailSelected value)? detailSelected,
    TResult Function(_CommentUpdated value)? commentUpdated,
    TResult Function(_TechProcessUpdated value)? techProcessUpdated,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult Function(_DetailStatusUpdated value)? detailStatusUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecificationEventCopyWith<$Res> {
  factory $SpecificationEventCopyWith(
          SpecificationEvent value, $Res Function(SpecificationEvent) then) =
      _$SpecificationEventCopyWithImpl<$Res, SpecificationEvent>;
}

/// @nodoc
class _$SpecificationEventCopyWithImpl<$Res, $Val extends SpecificationEvent>
    implements $SpecificationEventCopyWith<$Res> {
  _$SpecificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DetailsLoadedImplCopyWith<$Res> {
  factory _$$DetailsLoadedImplCopyWith(
          _$DetailsLoadedImpl value, $Res Function(_$DetailsLoadedImpl) then) =
      __$$DetailsLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailsLoadedImplCopyWithImpl<$Res>
    extends _$SpecificationEventCopyWithImpl<$Res, _$DetailsLoadedImpl>
    implements _$$DetailsLoadedImplCopyWith<$Res> {
  __$$DetailsLoadedImplCopyWithImpl(
      _$DetailsLoadedImpl _value, $Res Function(_$DetailsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DetailsLoadedImpl
    with DiagnosticableTreeMixin
    implements _DetailsLoaded {
  const _$DetailsLoadedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpecificationEvent.detailsLoaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SpecificationEvent.detailsLoaded'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetailsLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() detailsLoaded,
    required TResult Function(int detailId) detailSelected,
    required TResult Function(int detailId, String comment) commentUpdated,
    required TResult Function(int detailId, String techProcess)
        techProcessUpdated,
    required TResult Function(String? orderNumber) searchQueryChanged,
    required TResult Function(int detailId, DetailStatus status)
        detailStatusUpdated,
  }) {
    return detailsLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? detailsLoaded,
    TResult? Function(int detailId)? detailSelected,
    TResult? Function(int detailId, String comment)? commentUpdated,
    TResult? Function(int detailId, String techProcess)? techProcessUpdated,
    TResult? Function(String? orderNumber)? searchQueryChanged,
    TResult? Function(int detailId, DetailStatus status)? detailStatusUpdated,
  }) {
    return detailsLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? detailsLoaded,
    TResult Function(int detailId)? detailSelected,
    TResult Function(int detailId, String comment)? commentUpdated,
    TResult Function(int detailId, String techProcess)? techProcessUpdated,
    TResult Function(String? orderNumber)? searchQueryChanged,
    TResult Function(int detailId, DetailStatus status)? detailStatusUpdated,
    required TResult orElse(),
  }) {
    if (detailsLoaded != null) {
      return detailsLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_DetailSelected value) detailSelected,
    required TResult Function(_CommentUpdated value) commentUpdated,
    required TResult Function(_TechProcessUpdated value) techProcessUpdated,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
    required TResult Function(_DetailStatusUpdated value) detailStatusUpdated,
  }) {
    return detailsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_DetailSelected value)? detailSelected,
    TResult? Function(_CommentUpdated value)? commentUpdated,
    TResult? Function(_TechProcessUpdated value)? techProcessUpdated,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(_DetailStatusUpdated value)? detailStatusUpdated,
  }) {
    return detailsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_DetailSelected value)? detailSelected,
    TResult Function(_CommentUpdated value)? commentUpdated,
    TResult Function(_TechProcessUpdated value)? techProcessUpdated,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult Function(_DetailStatusUpdated value)? detailStatusUpdated,
    required TResult orElse(),
  }) {
    if (detailsLoaded != null) {
      return detailsLoaded(this);
    }
    return orElse();
  }
}

abstract class _DetailsLoaded implements SpecificationEvent {
  const factory _DetailsLoaded() = _$DetailsLoadedImpl;
}

/// @nodoc
abstract class _$$DetailSelectedImplCopyWith<$Res> {
  factory _$$DetailSelectedImplCopyWith(_$DetailSelectedImpl value,
          $Res Function(_$DetailSelectedImpl) then) =
      __$$DetailSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int detailId});
}

/// @nodoc
class __$$DetailSelectedImplCopyWithImpl<$Res>
    extends _$SpecificationEventCopyWithImpl<$Res, _$DetailSelectedImpl>
    implements _$$DetailSelectedImplCopyWith<$Res> {
  __$$DetailSelectedImplCopyWithImpl(
      _$DetailSelectedImpl _value, $Res Function(_$DetailSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailId = null,
  }) {
    return _then(_$DetailSelectedImpl(
      null == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DetailSelectedImpl
    with DiagnosticableTreeMixin
    implements _DetailSelected {
  const _$DetailSelectedImpl(this.detailId);

  @override
  final int detailId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpecificationEvent.detailSelected(detailId: $detailId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpecificationEvent.detailSelected'))
      ..add(DiagnosticsProperty('detailId', detailId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailSelectedImpl &&
            (identical(other.detailId, detailId) ||
                other.detailId == detailId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailId);

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailSelectedImplCopyWith<_$DetailSelectedImpl> get copyWith =>
      __$$DetailSelectedImplCopyWithImpl<_$DetailSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() detailsLoaded,
    required TResult Function(int detailId) detailSelected,
    required TResult Function(int detailId, String comment) commentUpdated,
    required TResult Function(int detailId, String techProcess)
        techProcessUpdated,
    required TResult Function(String? orderNumber) searchQueryChanged,
    required TResult Function(int detailId, DetailStatus status)
        detailStatusUpdated,
  }) {
    return detailSelected(detailId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? detailsLoaded,
    TResult? Function(int detailId)? detailSelected,
    TResult? Function(int detailId, String comment)? commentUpdated,
    TResult? Function(int detailId, String techProcess)? techProcessUpdated,
    TResult? Function(String? orderNumber)? searchQueryChanged,
    TResult? Function(int detailId, DetailStatus status)? detailStatusUpdated,
  }) {
    return detailSelected?.call(detailId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? detailsLoaded,
    TResult Function(int detailId)? detailSelected,
    TResult Function(int detailId, String comment)? commentUpdated,
    TResult Function(int detailId, String techProcess)? techProcessUpdated,
    TResult Function(String? orderNumber)? searchQueryChanged,
    TResult Function(int detailId, DetailStatus status)? detailStatusUpdated,
    required TResult orElse(),
  }) {
    if (detailSelected != null) {
      return detailSelected(detailId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_DetailSelected value) detailSelected,
    required TResult Function(_CommentUpdated value) commentUpdated,
    required TResult Function(_TechProcessUpdated value) techProcessUpdated,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
    required TResult Function(_DetailStatusUpdated value) detailStatusUpdated,
  }) {
    return detailSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_DetailSelected value)? detailSelected,
    TResult? Function(_CommentUpdated value)? commentUpdated,
    TResult? Function(_TechProcessUpdated value)? techProcessUpdated,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(_DetailStatusUpdated value)? detailStatusUpdated,
  }) {
    return detailSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_DetailSelected value)? detailSelected,
    TResult Function(_CommentUpdated value)? commentUpdated,
    TResult Function(_TechProcessUpdated value)? techProcessUpdated,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult Function(_DetailStatusUpdated value)? detailStatusUpdated,
    required TResult orElse(),
  }) {
    if (detailSelected != null) {
      return detailSelected(this);
    }
    return orElse();
  }
}

abstract class _DetailSelected implements SpecificationEvent {
  const factory _DetailSelected(final int detailId) = _$DetailSelectedImpl;

  int get detailId;

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailSelectedImplCopyWith<_$DetailSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommentUpdatedImplCopyWith<$Res> {
  factory _$$CommentUpdatedImplCopyWith(_$CommentUpdatedImpl value,
          $Res Function(_$CommentUpdatedImpl) then) =
      __$$CommentUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int detailId, String comment});
}

/// @nodoc
class __$$CommentUpdatedImplCopyWithImpl<$Res>
    extends _$SpecificationEventCopyWithImpl<$Res, _$CommentUpdatedImpl>
    implements _$$CommentUpdatedImplCopyWith<$Res> {
  __$$CommentUpdatedImplCopyWithImpl(
      _$CommentUpdatedImpl _value, $Res Function(_$CommentUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailId = null,
    Object? comment = null,
  }) {
    return _then(_$CommentUpdatedImpl(
      null == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as int,
      null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentUpdatedImpl
    with DiagnosticableTreeMixin
    implements _CommentUpdated {
  const _$CommentUpdatedImpl(this.detailId, this.comment);

  @override
  final int detailId;
  @override
  final String comment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpecificationEvent.commentUpdated(detailId: $detailId, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpecificationEvent.commentUpdated'))
      ..add(DiagnosticsProperty('detailId', detailId))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentUpdatedImpl &&
            (identical(other.detailId, detailId) ||
                other.detailId == detailId) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailId, comment);

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentUpdatedImplCopyWith<_$CommentUpdatedImpl> get copyWith =>
      __$$CommentUpdatedImplCopyWithImpl<_$CommentUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() detailsLoaded,
    required TResult Function(int detailId) detailSelected,
    required TResult Function(int detailId, String comment) commentUpdated,
    required TResult Function(int detailId, String techProcess)
        techProcessUpdated,
    required TResult Function(String? orderNumber) searchQueryChanged,
    required TResult Function(int detailId, DetailStatus status)
        detailStatusUpdated,
  }) {
    return commentUpdated(detailId, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? detailsLoaded,
    TResult? Function(int detailId)? detailSelected,
    TResult? Function(int detailId, String comment)? commentUpdated,
    TResult? Function(int detailId, String techProcess)? techProcessUpdated,
    TResult? Function(String? orderNumber)? searchQueryChanged,
    TResult? Function(int detailId, DetailStatus status)? detailStatusUpdated,
  }) {
    return commentUpdated?.call(detailId, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? detailsLoaded,
    TResult Function(int detailId)? detailSelected,
    TResult Function(int detailId, String comment)? commentUpdated,
    TResult Function(int detailId, String techProcess)? techProcessUpdated,
    TResult Function(String? orderNumber)? searchQueryChanged,
    TResult Function(int detailId, DetailStatus status)? detailStatusUpdated,
    required TResult orElse(),
  }) {
    if (commentUpdated != null) {
      return commentUpdated(detailId, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_DetailSelected value) detailSelected,
    required TResult Function(_CommentUpdated value) commentUpdated,
    required TResult Function(_TechProcessUpdated value) techProcessUpdated,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
    required TResult Function(_DetailStatusUpdated value) detailStatusUpdated,
  }) {
    return commentUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_DetailSelected value)? detailSelected,
    TResult? Function(_CommentUpdated value)? commentUpdated,
    TResult? Function(_TechProcessUpdated value)? techProcessUpdated,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(_DetailStatusUpdated value)? detailStatusUpdated,
  }) {
    return commentUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_DetailSelected value)? detailSelected,
    TResult Function(_CommentUpdated value)? commentUpdated,
    TResult Function(_TechProcessUpdated value)? techProcessUpdated,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult Function(_DetailStatusUpdated value)? detailStatusUpdated,
    required TResult orElse(),
  }) {
    if (commentUpdated != null) {
      return commentUpdated(this);
    }
    return orElse();
  }
}

abstract class _CommentUpdated implements SpecificationEvent {
  const factory _CommentUpdated(final int detailId, final String comment) =
      _$CommentUpdatedImpl;

  int get detailId;
  String get comment;

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentUpdatedImplCopyWith<_$CommentUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TechProcessUpdatedImplCopyWith<$Res> {
  factory _$$TechProcessUpdatedImplCopyWith(_$TechProcessUpdatedImpl value,
          $Res Function(_$TechProcessUpdatedImpl) then) =
      __$$TechProcessUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int detailId, String techProcess});
}

/// @nodoc
class __$$TechProcessUpdatedImplCopyWithImpl<$Res>
    extends _$SpecificationEventCopyWithImpl<$Res, _$TechProcessUpdatedImpl>
    implements _$$TechProcessUpdatedImplCopyWith<$Res> {
  __$$TechProcessUpdatedImplCopyWithImpl(_$TechProcessUpdatedImpl _value,
      $Res Function(_$TechProcessUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailId = null,
    Object? techProcess = null,
  }) {
    return _then(_$TechProcessUpdatedImpl(
      null == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as int,
      null == techProcess
          ? _value.techProcess
          : techProcess // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TechProcessUpdatedImpl
    with DiagnosticableTreeMixin
    implements _TechProcessUpdated {
  const _$TechProcessUpdatedImpl(this.detailId, this.techProcess);

  @override
  final int detailId;
  @override
  final String techProcess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpecificationEvent.techProcessUpdated(detailId: $detailId, techProcess: $techProcess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SpecificationEvent.techProcessUpdated'))
      ..add(DiagnosticsProperty('detailId', detailId))
      ..add(DiagnosticsProperty('techProcess', techProcess));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechProcessUpdatedImpl &&
            (identical(other.detailId, detailId) ||
                other.detailId == detailId) &&
            (identical(other.techProcess, techProcess) ||
                other.techProcess == techProcess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailId, techProcess);

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TechProcessUpdatedImplCopyWith<_$TechProcessUpdatedImpl> get copyWith =>
      __$$TechProcessUpdatedImplCopyWithImpl<_$TechProcessUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() detailsLoaded,
    required TResult Function(int detailId) detailSelected,
    required TResult Function(int detailId, String comment) commentUpdated,
    required TResult Function(int detailId, String techProcess)
        techProcessUpdated,
    required TResult Function(String? orderNumber) searchQueryChanged,
    required TResult Function(int detailId, DetailStatus status)
        detailStatusUpdated,
  }) {
    return techProcessUpdated(detailId, techProcess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? detailsLoaded,
    TResult? Function(int detailId)? detailSelected,
    TResult? Function(int detailId, String comment)? commentUpdated,
    TResult? Function(int detailId, String techProcess)? techProcessUpdated,
    TResult? Function(String? orderNumber)? searchQueryChanged,
    TResult? Function(int detailId, DetailStatus status)? detailStatusUpdated,
  }) {
    return techProcessUpdated?.call(detailId, techProcess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? detailsLoaded,
    TResult Function(int detailId)? detailSelected,
    TResult Function(int detailId, String comment)? commentUpdated,
    TResult Function(int detailId, String techProcess)? techProcessUpdated,
    TResult Function(String? orderNumber)? searchQueryChanged,
    TResult Function(int detailId, DetailStatus status)? detailStatusUpdated,
    required TResult orElse(),
  }) {
    if (techProcessUpdated != null) {
      return techProcessUpdated(detailId, techProcess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_DetailSelected value) detailSelected,
    required TResult Function(_CommentUpdated value) commentUpdated,
    required TResult Function(_TechProcessUpdated value) techProcessUpdated,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
    required TResult Function(_DetailStatusUpdated value) detailStatusUpdated,
  }) {
    return techProcessUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_DetailSelected value)? detailSelected,
    TResult? Function(_CommentUpdated value)? commentUpdated,
    TResult? Function(_TechProcessUpdated value)? techProcessUpdated,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(_DetailStatusUpdated value)? detailStatusUpdated,
  }) {
    return techProcessUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_DetailSelected value)? detailSelected,
    TResult Function(_CommentUpdated value)? commentUpdated,
    TResult Function(_TechProcessUpdated value)? techProcessUpdated,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult Function(_DetailStatusUpdated value)? detailStatusUpdated,
    required TResult orElse(),
  }) {
    if (techProcessUpdated != null) {
      return techProcessUpdated(this);
    }
    return orElse();
  }
}

abstract class _TechProcessUpdated implements SpecificationEvent {
  const factory _TechProcessUpdated(
      final int detailId, final String techProcess) = _$TechProcessUpdatedImpl;

  int get detailId;
  String get techProcess;

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TechProcessUpdatedImplCopyWith<_$TechProcessUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchQueryChangedImplCopyWith<$Res> {
  factory _$$SearchQueryChangedImplCopyWith(_$SearchQueryChangedImpl value,
          $Res Function(_$SearchQueryChangedImpl) then) =
      __$$SearchQueryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? orderNumber});
}

/// @nodoc
class __$$SearchQueryChangedImplCopyWithImpl<$Res>
    extends _$SpecificationEventCopyWithImpl<$Res, _$SearchQueryChangedImpl>
    implements _$$SearchQueryChangedImplCopyWith<$Res> {
  __$$SearchQueryChangedImplCopyWithImpl(_$SearchQueryChangedImpl _value,
      $Res Function(_$SearchQueryChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNumber = freezed,
  }) {
    return _then(_$SearchQueryChangedImpl(
      freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchQueryChangedImpl
    with DiagnosticableTreeMixin
    implements _SearchQueryChanged {
  const _$SearchQueryChangedImpl(this.orderNumber);

  @override
  final String? orderNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpecificationEvent.searchQueryChanged(orderNumber: $orderNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SpecificationEvent.searchQueryChanged'))
      ..add(DiagnosticsProperty('orderNumber', orderNumber));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQueryChangedImpl &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderNumber);

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQueryChangedImplCopyWith<_$SearchQueryChangedImpl> get copyWith =>
      __$$SearchQueryChangedImplCopyWithImpl<_$SearchQueryChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() detailsLoaded,
    required TResult Function(int detailId) detailSelected,
    required TResult Function(int detailId, String comment) commentUpdated,
    required TResult Function(int detailId, String techProcess)
        techProcessUpdated,
    required TResult Function(String? orderNumber) searchQueryChanged,
    required TResult Function(int detailId, DetailStatus status)
        detailStatusUpdated,
  }) {
    return searchQueryChanged(orderNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? detailsLoaded,
    TResult? Function(int detailId)? detailSelected,
    TResult? Function(int detailId, String comment)? commentUpdated,
    TResult? Function(int detailId, String techProcess)? techProcessUpdated,
    TResult? Function(String? orderNumber)? searchQueryChanged,
    TResult? Function(int detailId, DetailStatus status)? detailStatusUpdated,
  }) {
    return searchQueryChanged?.call(orderNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? detailsLoaded,
    TResult Function(int detailId)? detailSelected,
    TResult Function(int detailId, String comment)? commentUpdated,
    TResult Function(int detailId, String techProcess)? techProcessUpdated,
    TResult Function(String? orderNumber)? searchQueryChanged,
    TResult Function(int detailId, DetailStatus status)? detailStatusUpdated,
    required TResult orElse(),
  }) {
    if (searchQueryChanged != null) {
      return searchQueryChanged(orderNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_DetailSelected value) detailSelected,
    required TResult Function(_CommentUpdated value) commentUpdated,
    required TResult Function(_TechProcessUpdated value) techProcessUpdated,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
    required TResult Function(_DetailStatusUpdated value) detailStatusUpdated,
  }) {
    return searchQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_DetailSelected value)? detailSelected,
    TResult? Function(_CommentUpdated value)? commentUpdated,
    TResult? Function(_TechProcessUpdated value)? techProcessUpdated,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(_DetailStatusUpdated value)? detailStatusUpdated,
  }) {
    return searchQueryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_DetailSelected value)? detailSelected,
    TResult Function(_CommentUpdated value)? commentUpdated,
    TResult Function(_TechProcessUpdated value)? techProcessUpdated,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult Function(_DetailStatusUpdated value)? detailStatusUpdated,
    required TResult orElse(),
  }) {
    if (searchQueryChanged != null) {
      return searchQueryChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchQueryChanged implements SpecificationEvent {
  const factory _SearchQueryChanged(final String? orderNumber) =
      _$SearchQueryChangedImpl;

  String? get orderNumber;

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchQueryChangedImplCopyWith<_$SearchQueryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailStatusUpdatedImplCopyWith<$Res> {
  factory _$$DetailStatusUpdatedImplCopyWith(_$DetailStatusUpdatedImpl value,
          $Res Function(_$DetailStatusUpdatedImpl) then) =
      __$$DetailStatusUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int detailId, DetailStatus status});
}

/// @nodoc
class __$$DetailStatusUpdatedImplCopyWithImpl<$Res>
    extends _$SpecificationEventCopyWithImpl<$Res, _$DetailStatusUpdatedImpl>
    implements _$$DetailStatusUpdatedImplCopyWith<$Res> {
  __$$DetailStatusUpdatedImplCopyWithImpl(_$DetailStatusUpdatedImpl _value,
      $Res Function(_$DetailStatusUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailId = null,
    Object? status = null,
  }) {
    return _then(_$DetailStatusUpdatedImpl(
      null == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as int,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailStatus,
    ));
  }
}

/// @nodoc

class _$DetailStatusUpdatedImpl
    with DiagnosticableTreeMixin
    implements _DetailStatusUpdated {
  const _$DetailStatusUpdatedImpl(this.detailId, this.status);

  @override
  final int detailId;
  @override
  final DetailStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpecificationEvent.detailStatusUpdated(detailId: $detailId, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SpecificationEvent.detailStatusUpdated'))
      ..add(DiagnosticsProperty('detailId', detailId))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStatusUpdatedImpl &&
            (identical(other.detailId, detailId) ||
                other.detailId == detailId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailId, status);

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStatusUpdatedImplCopyWith<_$DetailStatusUpdatedImpl> get copyWith =>
      __$$DetailStatusUpdatedImplCopyWithImpl<_$DetailStatusUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() detailsLoaded,
    required TResult Function(int detailId) detailSelected,
    required TResult Function(int detailId, String comment) commentUpdated,
    required TResult Function(int detailId, String techProcess)
        techProcessUpdated,
    required TResult Function(String? orderNumber) searchQueryChanged,
    required TResult Function(int detailId, DetailStatus status)
        detailStatusUpdated,
  }) {
    return detailStatusUpdated(detailId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? detailsLoaded,
    TResult? Function(int detailId)? detailSelected,
    TResult? Function(int detailId, String comment)? commentUpdated,
    TResult? Function(int detailId, String techProcess)? techProcessUpdated,
    TResult? Function(String? orderNumber)? searchQueryChanged,
    TResult? Function(int detailId, DetailStatus status)? detailStatusUpdated,
  }) {
    return detailStatusUpdated?.call(detailId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? detailsLoaded,
    TResult Function(int detailId)? detailSelected,
    TResult Function(int detailId, String comment)? commentUpdated,
    TResult Function(int detailId, String techProcess)? techProcessUpdated,
    TResult Function(String? orderNumber)? searchQueryChanged,
    TResult Function(int detailId, DetailStatus status)? detailStatusUpdated,
    required TResult orElse(),
  }) {
    if (detailStatusUpdated != null) {
      return detailStatusUpdated(detailId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsLoaded value) detailsLoaded,
    required TResult Function(_DetailSelected value) detailSelected,
    required TResult Function(_CommentUpdated value) commentUpdated,
    required TResult Function(_TechProcessUpdated value) techProcessUpdated,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
    required TResult Function(_DetailStatusUpdated value) detailStatusUpdated,
  }) {
    return detailStatusUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsLoaded value)? detailsLoaded,
    TResult? Function(_DetailSelected value)? detailSelected,
    TResult? Function(_CommentUpdated value)? commentUpdated,
    TResult? Function(_TechProcessUpdated value)? techProcessUpdated,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(_DetailStatusUpdated value)? detailStatusUpdated,
  }) {
    return detailStatusUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsLoaded value)? detailsLoaded,
    TResult Function(_DetailSelected value)? detailSelected,
    TResult Function(_CommentUpdated value)? commentUpdated,
    TResult Function(_TechProcessUpdated value)? techProcessUpdated,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult Function(_DetailStatusUpdated value)? detailStatusUpdated,
    required TResult orElse(),
  }) {
    if (detailStatusUpdated != null) {
      return detailStatusUpdated(this);
    }
    return orElse();
  }
}

abstract class _DetailStatusUpdated implements SpecificationEvent {
  const factory _DetailStatusUpdated(
          final int detailId, final DetailStatus status) =
      _$DetailStatusUpdatedImpl;

  int get detailId;
  DetailStatus get status;

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailStatusUpdatedImplCopyWith<_$DetailStatusUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpecificationState {
  List<Detail> get details => throw _privateConstructorUsedError;
  Detail? get selectedDetail => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  /// Create a copy of SpecificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecificationStateCopyWith<SpecificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecificationStateCopyWith<$Res> {
  factory $SpecificationStateCopyWith(
          SpecificationState value, $Res Function(SpecificationState) then) =
      _$SpecificationStateCopyWithImpl<$Res, SpecificationState>;
  @useResult
  $Res call(
      {List<Detail> details,
      Detail? selectedDetail,
      bool isLoading,
      String? searchQuery,
      bool hasError});
}

/// @nodoc
class _$SpecificationStateCopyWithImpl<$Res, $Val extends SpecificationState>
    implements $SpecificationStateCopyWith<$Res> {
  _$SpecificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
    Object? selectedDetail = freezed,
    Object? isLoading = null,
    Object? searchQuery = freezed,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Detail>,
      selectedDetail: freezed == selectedDetail
          ? _value.selectedDetail
          : selectedDetail // ignore: cast_nullable_to_non_nullable
              as Detail?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecificationStateImplCopyWith<$Res>
    implements $SpecificationStateCopyWith<$Res> {
  factory _$$SpecificationStateImplCopyWith(_$SpecificationStateImpl value,
          $Res Function(_$SpecificationStateImpl) then) =
      __$$SpecificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Detail> details,
      Detail? selectedDetail,
      bool isLoading,
      String? searchQuery,
      bool hasError});
}

/// @nodoc
class __$$SpecificationStateImplCopyWithImpl<$Res>
    extends _$SpecificationStateCopyWithImpl<$Res, _$SpecificationStateImpl>
    implements _$$SpecificationStateImplCopyWith<$Res> {
  __$$SpecificationStateImplCopyWithImpl(_$SpecificationStateImpl _value,
      $Res Function(_$SpecificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
    Object? selectedDetail = freezed,
    Object? isLoading = null,
    Object? searchQuery = freezed,
    Object? hasError = null,
  }) {
    return _then(_$SpecificationStateImpl(
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Detail>,
      selectedDetail: freezed == selectedDetail
          ? _value.selectedDetail
          : selectedDetail // ignore: cast_nullable_to_non_nullable
              as Detail?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SpecificationStateImpl
    with DiagnosticableTreeMixin
    implements _SpecificationState {
  const _$SpecificationStateImpl(
      {required final List<Detail> details,
      this.selectedDetail,
      required this.isLoading,
      this.searchQuery,
      required this.hasError})
      : _details = details;

  final List<Detail> _details;
  @override
  List<Detail> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  final Detail? selectedDetail;
  @override
  final bool isLoading;
  @override
  final String? searchQuery;
  @override
  final bool hasError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpecificationState(details: $details, selectedDetail: $selectedDetail, isLoading: $isLoading, searchQuery: $searchQuery, hasError: $hasError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpecificationState'))
      ..add(DiagnosticsProperty('details', details))
      ..add(DiagnosticsProperty('selectedDetail', selectedDetail))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('searchQuery', searchQuery))
      ..add(DiagnosticsProperty('hasError', hasError));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecificationStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.selectedDetail, selectedDetail) ||
                other.selectedDetail == selectedDetail) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_details),
      selectedDetail,
      isLoading,
      searchQuery,
      hasError);

  /// Create a copy of SpecificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecificationStateImplCopyWith<_$SpecificationStateImpl> get copyWith =>
      __$$SpecificationStateImplCopyWithImpl<_$SpecificationStateImpl>(
          this, _$identity);
}

abstract class _SpecificationState implements SpecificationState {
  const factory _SpecificationState(
      {required final List<Detail> details,
      final Detail? selectedDetail,
      required final bool isLoading,
      final String? searchQuery,
      required final bool hasError}) = _$SpecificationStateImpl;

  @override
  List<Detail> get details;
  @override
  Detail? get selectedDetail;
  @override
  bool get isLoading;
  @override
  String? get searchQuery;
  @override
  bool get hasError;

  /// Create a copy of SpecificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecificationStateImplCopyWith<_$SpecificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
