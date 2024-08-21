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
    required TResult Function() loadDetails,
    required TResult Function(int detailId) selectDetail,
    required TResult Function(int detailId, String? comment) updateComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDetails,
    TResult? Function(int detailId)? selectDetail,
    TResult? Function(int detailId, String? comment)? updateComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDetails,
    TResult Function(int detailId)? selectDetail,
    TResult Function(int detailId, String? comment)? updateComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDetails value) loadDetails,
    required TResult Function(_SelectDetail value) selectDetail,
    required TResult Function(_UpdateComment value) updateComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDetails value)? loadDetails,
    TResult? Function(_SelectDetail value)? selectDetail,
    TResult? Function(_UpdateComment value)? updateComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetails value)? loadDetails,
    TResult Function(_SelectDetail value)? selectDetail,
    TResult Function(_UpdateComment value)? updateComment,
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
abstract class _$$LoadDetailsImplCopyWith<$Res> {
  factory _$$LoadDetailsImplCopyWith(
          _$LoadDetailsImpl value, $Res Function(_$LoadDetailsImpl) then) =
      __$$LoadDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDetailsImplCopyWithImpl<$Res>
    extends _$SpecificationEventCopyWithImpl<$Res, _$LoadDetailsImpl>
    implements _$$LoadDetailsImplCopyWith<$Res> {
  __$$LoadDetailsImplCopyWithImpl(
      _$LoadDetailsImpl _value, $Res Function(_$LoadDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadDetailsImpl with DiagnosticableTreeMixin implements _LoadDetails {
  const _$LoadDetailsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpecificationEvent.loadDetails()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SpecificationEvent.loadDetails'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDetails,
    required TResult Function(int detailId) selectDetail,
    required TResult Function(int detailId, String? comment) updateComment,
  }) {
    return loadDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDetails,
    TResult? Function(int detailId)? selectDetail,
    TResult? Function(int detailId, String? comment)? updateComment,
  }) {
    return loadDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDetails,
    TResult Function(int detailId)? selectDetail,
    TResult Function(int detailId, String? comment)? updateComment,
    required TResult orElse(),
  }) {
    if (loadDetails != null) {
      return loadDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDetails value) loadDetails,
    required TResult Function(_SelectDetail value) selectDetail,
    required TResult Function(_UpdateComment value) updateComment,
  }) {
    return loadDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDetails value)? loadDetails,
    TResult? Function(_SelectDetail value)? selectDetail,
    TResult? Function(_UpdateComment value)? updateComment,
  }) {
    return loadDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetails value)? loadDetails,
    TResult Function(_SelectDetail value)? selectDetail,
    TResult Function(_UpdateComment value)? updateComment,
    required TResult orElse(),
  }) {
    if (loadDetails != null) {
      return loadDetails(this);
    }
    return orElse();
  }
}

abstract class _LoadDetails implements SpecificationEvent {
  const factory _LoadDetails() = _$LoadDetailsImpl;
}

/// @nodoc
abstract class _$$SelectDetailImplCopyWith<$Res> {
  factory _$$SelectDetailImplCopyWith(
          _$SelectDetailImpl value, $Res Function(_$SelectDetailImpl) then) =
      __$$SelectDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int detailId});
}

/// @nodoc
class __$$SelectDetailImplCopyWithImpl<$Res>
    extends _$SpecificationEventCopyWithImpl<$Res, _$SelectDetailImpl>
    implements _$$SelectDetailImplCopyWith<$Res> {
  __$$SelectDetailImplCopyWithImpl(
      _$SelectDetailImpl _value, $Res Function(_$SelectDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailId = null,
  }) {
    return _then(_$SelectDetailImpl(
      null == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectDetailImpl with DiagnosticableTreeMixin implements _SelectDetail {
  const _$SelectDetailImpl(this.detailId);

  @override
  final int detailId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpecificationEvent.selectDetail(detailId: $detailId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpecificationEvent.selectDetail'))
      ..add(DiagnosticsProperty('detailId', detailId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDetailImpl &&
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
  _$$SelectDetailImplCopyWith<_$SelectDetailImpl> get copyWith =>
      __$$SelectDetailImplCopyWithImpl<_$SelectDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDetails,
    required TResult Function(int detailId) selectDetail,
    required TResult Function(int detailId, String? comment) updateComment,
  }) {
    return selectDetail(detailId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDetails,
    TResult? Function(int detailId)? selectDetail,
    TResult? Function(int detailId, String? comment)? updateComment,
  }) {
    return selectDetail?.call(detailId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDetails,
    TResult Function(int detailId)? selectDetail,
    TResult Function(int detailId, String? comment)? updateComment,
    required TResult orElse(),
  }) {
    if (selectDetail != null) {
      return selectDetail(detailId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDetails value) loadDetails,
    required TResult Function(_SelectDetail value) selectDetail,
    required TResult Function(_UpdateComment value) updateComment,
  }) {
    return selectDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDetails value)? loadDetails,
    TResult? Function(_SelectDetail value)? selectDetail,
    TResult? Function(_UpdateComment value)? updateComment,
  }) {
    return selectDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetails value)? loadDetails,
    TResult Function(_SelectDetail value)? selectDetail,
    TResult Function(_UpdateComment value)? updateComment,
    required TResult orElse(),
  }) {
    if (selectDetail != null) {
      return selectDetail(this);
    }
    return orElse();
  }
}

abstract class _SelectDetail implements SpecificationEvent {
  const factory _SelectDetail(final int detailId) = _$SelectDetailImpl;

  int get detailId;

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectDetailImplCopyWith<_$SelectDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCommentImplCopyWith<$Res> {
  factory _$$UpdateCommentImplCopyWith(
          _$UpdateCommentImpl value, $Res Function(_$UpdateCommentImpl) then) =
      __$$UpdateCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int detailId, String? comment});
}

/// @nodoc
class __$$UpdateCommentImplCopyWithImpl<$Res>
    extends _$SpecificationEventCopyWithImpl<$Res, _$UpdateCommentImpl>
    implements _$$UpdateCommentImplCopyWith<$Res> {
  __$$UpdateCommentImplCopyWithImpl(
      _$UpdateCommentImpl _value, $Res Function(_$UpdateCommentImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailId = null,
    Object? comment = freezed,
  }) {
    return _then(_$UpdateCommentImpl(
      null == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateCommentImpl
    with DiagnosticableTreeMixin
    implements _UpdateComment {
  const _$UpdateCommentImpl(this.detailId, this.comment);

  @override
  final int detailId;
  @override
  final String? comment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpecificationEvent.updateComment(detailId: $detailId, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpecificationEvent.updateComment'))
      ..add(DiagnosticsProperty('detailId', detailId))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCommentImpl &&
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
  _$$UpdateCommentImplCopyWith<_$UpdateCommentImpl> get copyWith =>
      __$$UpdateCommentImplCopyWithImpl<_$UpdateCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDetails,
    required TResult Function(int detailId) selectDetail,
    required TResult Function(int detailId, String? comment) updateComment,
  }) {
    return updateComment(detailId, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDetails,
    TResult? Function(int detailId)? selectDetail,
    TResult? Function(int detailId, String? comment)? updateComment,
  }) {
    return updateComment?.call(detailId, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDetails,
    TResult Function(int detailId)? selectDetail,
    TResult Function(int detailId, String? comment)? updateComment,
    required TResult orElse(),
  }) {
    if (updateComment != null) {
      return updateComment(detailId, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDetails value) loadDetails,
    required TResult Function(_SelectDetail value) selectDetail,
    required TResult Function(_UpdateComment value) updateComment,
  }) {
    return updateComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadDetails value)? loadDetails,
    TResult? Function(_SelectDetail value)? selectDetail,
    TResult? Function(_UpdateComment value)? updateComment,
  }) {
    return updateComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetails value)? loadDetails,
    TResult Function(_SelectDetail value)? selectDetail,
    TResult Function(_UpdateComment value)? updateComment,
    required TResult orElse(),
  }) {
    if (updateComment != null) {
      return updateComment(this);
    }
    return orElse();
  }
}

abstract class _UpdateComment implements SpecificationEvent {
  const factory _UpdateComment(final int detailId, final String? comment) =
      _$UpdateCommentImpl;

  int get detailId;
  String? get comment;

  /// Create a copy of SpecificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCommentImplCopyWith<_$UpdateCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpecificationState {
  Map<String, List<Detail>> get detailsByMonth =>
      throw _privateConstructorUsedError;
  Detail? get selectedDetail => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
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
      {Map<String, List<Detail>> detailsByMonth,
      Detail? selectedDetail,
      bool isLoading,
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
    Object? detailsByMonth = null,
    Object? selectedDetail = freezed,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      detailsByMonth: null == detailsByMonth
          ? _value.detailsByMonth
          : detailsByMonth // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Detail>>,
      selectedDetail: freezed == selectedDetail
          ? _value.selectedDetail
          : selectedDetail // ignore: cast_nullable_to_non_nullable
              as Detail?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {Map<String, List<Detail>> detailsByMonth,
      Detail? selectedDetail,
      bool isLoading,
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
    Object? detailsByMonth = null,
    Object? selectedDetail = freezed,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$SpecificationStateImpl(
      detailsByMonth: null == detailsByMonth
          ? _value._detailsByMonth
          : detailsByMonth // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Detail>>,
      selectedDetail: freezed == selectedDetail
          ? _value.selectedDetail
          : selectedDetail // ignore: cast_nullable_to_non_nullable
              as Detail?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {required final Map<String, List<Detail>> detailsByMonth,
      this.selectedDetail,
      required this.isLoading,
      required this.hasError})
      : _detailsByMonth = detailsByMonth;

  final Map<String, List<Detail>> _detailsByMonth;
  @override
  Map<String, List<Detail>> get detailsByMonth {
    if (_detailsByMonth is EqualUnmodifiableMapView) return _detailsByMonth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_detailsByMonth);
  }

  @override
  final Detail? selectedDetail;
  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpecificationState(detailsByMonth: $detailsByMonth, selectedDetail: $selectedDetail, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpecificationState'))
      ..add(DiagnosticsProperty('detailsByMonth', detailsByMonth))
      ..add(DiagnosticsProperty('selectedDetail', selectedDetail))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('hasError', hasError));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecificationStateImpl &&
            const DeepCollectionEquality()
                .equals(other._detailsByMonth, _detailsByMonth) &&
            (identical(other.selectedDetail, selectedDetail) ||
                other.selectedDetail == selectedDetail) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_detailsByMonth),
      selectedDetail,
      isLoading,
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
      {required final Map<String, List<Detail>> detailsByMonth,
      final Detail? selectedDetail,
      required final bool isLoading,
      required final bool hasError}) = _$SpecificationStateImpl;

  @override
  Map<String, List<Detail>> get detailsByMonth;
  @override
  Detail? get selectedDetail;
  @override
  bool get isLoading;
  @override
  bool get hasError;

  /// Create a copy of SpecificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecificationStateImplCopyWith<_$SpecificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
