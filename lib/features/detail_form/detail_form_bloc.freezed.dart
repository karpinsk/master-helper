// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? detailId) viewLoaded,
    required TResult Function(String mainDetailName) mainDetailNameChanged,
    required TResult Function() addButtonTapped,
    required TResult Function() submitButtonTapped,
    required TResult Function(int detailId) deleteButtonTapped,
    required TResult Function(int? detailId, DetailField field, dynamic value)
        detailUpdated,
    required TResult Function(int detailId, String source, bool isDrawing)
        imageSourceSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? detailId)? viewLoaded,
    TResult? Function(String mainDetailName)? mainDetailNameChanged,
    TResult? Function()? addButtonTapped,
    TResult? Function()? submitButtonTapped,
    TResult? Function(int detailId)? deleteButtonTapped,
    TResult? Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult? Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? detailId)? viewLoaded,
    TResult Function(String mainDetailName)? mainDetailNameChanged,
    TResult Function()? addButtonTapped,
    TResult Function()? submitButtonTapped,
    TResult Function(int detailId)? deleteButtonTapped,
    TResult Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewLoaded value) viewLoaded,
    required TResult Function(_MainDetailNameChanged value)
        mainDetailNameChanged,
    required TResult Function(_AddButtonTapped value) addButtonTapped,
    required TResult Function(_SubmitButtonTapped value) submitButtonTapped,
    required TResult Function(_DeleteButtonTapped value) deleteButtonTapped,
    required TResult Function(_DetailUpdated value) detailUpdated,
    required TResult Function(_ImageSourceSelected value) imageSourceSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewLoaded value)? viewLoaded,
    TResult? Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult? Function(_AddButtonTapped value)? addButtonTapped,
    TResult? Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult? Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult? Function(_DetailUpdated value)? detailUpdated,
    TResult? Function(_ImageSourceSelected value)? imageSourceSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewLoaded value)? viewLoaded,
    TResult Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult Function(_AddButtonTapped value)? addButtonTapped,
    TResult Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult Function(_DetailUpdated value)? detailUpdated,
    TResult Function(_ImageSourceSelected value)? imageSourceSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailFormEventCopyWith<$Res> {
  factory $DetailFormEventCopyWith(
          DetailFormEvent value, $Res Function(DetailFormEvent) then) =
      _$DetailFormEventCopyWithImpl<$Res, DetailFormEvent>;
}

/// @nodoc
class _$DetailFormEventCopyWithImpl<$Res, $Val extends DetailFormEvent>
    implements $DetailFormEventCopyWith<$Res> {
  _$DetailFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ViewLoadedImplCopyWith<$Res> {
  factory _$$ViewLoadedImplCopyWith(
          _$ViewLoadedImpl value, $Res Function(_$ViewLoadedImpl) then) =
      __$$ViewLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? detailId});
}

/// @nodoc
class __$$ViewLoadedImplCopyWithImpl<$Res>
    extends _$DetailFormEventCopyWithImpl<$Res, _$ViewLoadedImpl>
    implements _$$ViewLoadedImplCopyWith<$Res> {
  __$$ViewLoadedImplCopyWithImpl(
      _$ViewLoadedImpl _value, $Res Function(_$ViewLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailId = freezed,
  }) {
    return _then(_$ViewLoadedImpl(
      detailId: freezed == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ViewLoadedImpl implements _ViewLoaded {
  const _$ViewLoadedImpl({this.detailId});

  @override
  final int? detailId;

  @override
  String toString() {
    return 'DetailFormEvent.viewLoaded(detailId: $detailId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewLoadedImpl &&
            (identical(other.detailId, detailId) ||
                other.detailId == detailId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailId);

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewLoadedImplCopyWith<_$ViewLoadedImpl> get copyWith =>
      __$$ViewLoadedImplCopyWithImpl<_$ViewLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? detailId) viewLoaded,
    required TResult Function(String mainDetailName) mainDetailNameChanged,
    required TResult Function() addButtonTapped,
    required TResult Function() submitButtonTapped,
    required TResult Function(int detailId) deleteButtonTapped,
    required TResult Function(int? detailId, DetailField field, dynamic value)
        detailUpdated,
    required TResult Function(int detailId, String source, bool isDrawing)
        imageSourceSelected,
  }) {
    return viewLoaded(detailId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? detailId)? viewLoaded,
    TResult? Function(String mainDetailName)? mainDetailNameChanged,
    TResult? Function()? addButtonTapped,
    TResult? Function()? submitButtonTapped,
    TResult? Function(int detailId)? deleteButtonTapped,
    TResult? Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult? Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
  }) {
    return viewLoaded?.call(detailId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? detailId)? viewLoaded,
    TResult Function(String mainDetailName)? mainDetailNameChanged,
    TResult Function()? addButtonTapped,
    TResult Function()? submitButtonTapped,
    TResult Function(int detailId)? deleteButtonTapped,
    TResult Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
    required TResult orElse(),
  }) {
    if (viewLoaded != null) {
      return viewLoaded(detailId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewLoaded value) viewLoaded,
    required TResult Function(_MainDetailNameChanged value)
        mainDetailNameChanged,
    required TResult Function(_AddButtonTapped value) addButtonTapped,
    required TResult Function(_SubmitButtonTapped value) submitButtonTapped,
    required TResult Function(_DeleteButtonTapped value) deleteButtonTapped,
    required TResult Function(_DetailUpdated value) detailUpdated,
    required TResult Function(_ImageSourceSelected value) imageSourceSelected,
  }) {
    return viewLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewLoaded value)? viewLoaded,
    TResult? Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult? Function(_AddButtonTapped value)? addButtonTapped,
    TResult? Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult? Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult? Function(_DetailUpdated value)? detailUpdated,
    TResult? Function(_ImageSourceSelected value)? imageSourceSelected,
  }) {
    return viewLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewLoaded value)? viewLoaded,
    TResult Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult Function(_AddButtonTapped value)? addButtonTapped,
    TResult Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult Function(_DetailUpdated value)? detailUpdated,
    TResult Function(_ImageSourceSelected value)? imageSourceSelected,
    required TResult orElse(),
  }) {
    if (viewLoaded != null) {
      return viewLoaded(this);
    }
    return orElse();
  }
}

abstract class _ViewLoaded implements DetailFormEvent {
  const factory _ViewLoaded({final int? detailId}) = _$ViewLoadedImpl;

  int? get detailId;

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViewLoadedImplCopyWith<_$ViewLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainDetailNameChangedImplCopyWith<$Res> {
  factory _$$MainDetailNameChangedImplCopyWith(
          _$MainDetailNameChangedImpl value,
          $Res Function(_$MainDetailNameChangedImpl) then) =
      __$$MainDetailNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mainDetailName});
}

/// @nodoc
class __$$MainDetailNameChangedImplCopyWithImpl<$Res>
    extends _$DetailFormEventCopyWithImpl<$Res, _$MainDetailNameChangedImpl>
    implements _$$MainDetailNameChangedImplCopyWith<$Res> {
  __$$MainDetailNameChangedImplCopyWithImpl(_$MainDetailNameChangedImpl _value,
      $Res Function(_$MainDetailNameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainDetailName = null,
  }) {
    return _then(_$MainDetailNameChangedImpl(
      mainDetailName: null == mainDetailName
          ? _value.mainDetailName
          : mainDetailName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainDetailNameChangedImpl implements _MainDetailNameChanged {
  const _$MainDetailNameChangedImpl({required this.mainDetailName});

  @override
  final String mainDetailName;

  @override
  String toString() {
    return 'DetailFormEvent.mainDetailNameChanged(mainDetailName: $mainDetailName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainDetailNameChangedImpl &&
            (identical(other.mainDetailName, mainDetailName) ||
                other.mainDetailName == mainDetailName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mainDetailName);

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainDetailNameChangedImplCopyWith<_$MainDetailNameChangedImpl>
      get copyWith => __$$MainDetailNameChangedImplCopyWithImpl<
          _$MainDetailNameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? detailId) viewLoaded,
    required TResult Function(String mainDetailName) mainDetailNameChanged,
    required TResult Function() addButtonTapped,
    required TResult Function() submitButtonTapped,
    required TResult Function(int detailId) deleteButtonTapped,
    required TResult Function(int? detailId, DetailField field, dynamic value)
        detailUpdated,
    required TResult Function(int detailId, String source, bool isDrawing)
        imageSourceSelected,
  }) {
    return mainDetailNameChanged(mainDetailName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? detailId)? viewLoaded,
    TResult? Function(String mainDetailName)? mainDetailNameChanged,
    TResult? Function()? addButtonTapped,
    TResult? Function()? submitButtonTapped,
    TResult? Function(int detailId)? deleteButtonTapped,
    TResult? Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult? Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
  }) {
    return mainDetailNameChanged?.call(mainDetailName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? detailId)? viewLoaded,
    TResult Function(String mainDetailName)? mainDetailNameChanged,
    TResult Function()? addButtonTapped,
    TResult Function()? submitButtonTapped,
    TResult Function(int detailId)? deleteButtonTapped,
    TResult Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
    required TResult orElse(),
  }) {
    if (mainDetailNameChanged != null) {
      return mainDetailNameChanged(mainDetailName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewLoaded value) viewLoaded,
    required TResult Function(_MainDetailNameChanged value)
        mainDetailNameChanged,
    required TResult Function(_AddButtonTapped value) addButtonTapped,
    required TResult Function(_SubmitButtonTapped value) submitButtonTapped,
    required TResult Function(_DeleteButtonTapped value) deleteButtonTapped,
    required TResult Function(_DetailUpdated value) detailUpdated,
    required TResult Function(_ImageSourceSelected value) imageSourceSelected,
  }) {
    return mainDetailNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewLoaded value)? viewLoaded,
    TResult? Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult? Function(_AddButtonTapped value)? addButtonTapped,
    TResult? Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult? Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult? Function(_DetailUpdated value)? detailUpdated,
    TResult? Function(_ImageSourceSelected value)? imageSourceSelected,
  }) {
    return mainDetailNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewLoaded value)? viewLoaded,
    TResult Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult Function(_AddButtonTapped value)? addButtonTapped,
    TResult Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult Function(_DetailUpdated value)? detailUpdated,
    TResult Function(_ImageSourceSelected value)? imageSourceSelected,
    required TResult orElse(),
  }) {
    if (mainDetailNameChanged != null) {
      return mainDetailNameChanged(this);
    }
    return orElse();
  }
}

abstract class _MainDetailNameChanged implements DetailFormEvent {
  const factory _MainDetailNameChanged({required final String mainDetailName}) =
      _$MainDetailNameChangedImpl;

  String get mainDetailName;

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainDetailNameChangedImplCopyWith<_$MainDetailNameChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddButtonTappedImplCopyWith<$Res> {
  factory _$$AddButtonTappedImplCopyWith(_$AddButtonTappedImpl value,
          $Res Function(_$AddButtonTappedImpl) then) =
      __$$AddButtonTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddButtonTappedImplCopyWithImpl<$Res>
    extends _$DetailFormEventCopyWithImpl<$Res, _$AddButtonTappedImpl>
    implements _$$AddButtonTappedImplCopyWith<$Res> {
  __$$AddButtonTappedImplCopyWithImpl(
      _$AddButtonTappedImpl _value, $Res Function(_$AddButtonTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddButtonTappedImpl implements _AddButtonTapped {
  const _$AddButtonTappedImpl();

  @override
  String toString() {
    return 'DetailFormEvent.addButtonTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddButtonTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? detailId) viewLoaded,
    required TResult Function(String mainDetailName) mainDetailNameChanged,
    required TResult Function() addButtonTapped,
    required TResult Function() submitButtonTapped,
    required TResult Function(int detailId) deleteButtonTapped,
    required TResult Function(int? detailId, DetailField field, dynamic value)
        detailUpdated,
    required TResult Function(int detailId, String source, bool isDrawing)
        imageSourceSelected,
  }) {
    return addButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? detailId)? viewLoaded,
    TResult? Function(String mainDetailName)? mainDetailNameChanged,
    TResult? Function()? addButtonTapped,
    TResult? Function()? submitButtonTapped,
    TResult? Function(int detailId)? deleteButtonTapped,
    TResult? Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult? Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
  }) {
    return addButtonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? detailId)? viewLoaded,
    TResult Function(String mainDetailName)? mainDetailNameChanged,
    TResult Function()? addButtonTapped,
    TResult Function()? submitButtonTapped,
    TResult Function(int detailId)? deleteButtonTapped,
    TResult Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
    required TResult orElse(),
  }) {
    if (addButtonTapped != null) {
      return addButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewLoaded value) viewLoaded,
    required TResult Function(_MainDetailNameChanged value)
        mainDetailNameChanged,
    required TResult Function(_AddButtonTapped value) addButtonTapped,
    required TResult Function(_SubmitButtonTapped value) submitButtonTapped,
    required TResult Function(_DeleteButtonTapped value) deleteButtonTapped,
    required TResult Function(_DetailUpdated value) detailUpdated,
    required TResult Function(_ImageSourceSelected value) imageSourceSelected,
  }) {
    return addButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewLoaded value)? viewLoaded,
    TResult? Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult? Function(_AddButtonTapped value)? addButtonTapped,
    TResult? Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult? Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult? Function(_DetailUpdated value)? detailUpdated,
    TResult? Function(_ImageSourceSelected value)? imageSourceSelected,
  }) {
    return addButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewLoaded value)? viewLoaded,
    TResult Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult Function(_AddButtonTapped value)? addButtonTapped,
    TResult Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult Function(_DetailUpdated value)? detailUpdated,
    TResult Function(_ImageSourceSelected value)? imageSourceSelected,
    required TResult orElse(),
  }) {
    if (addButtonTapped != null) {
      return addButtonTapped(this);
    }
    return orElse();
  }
}

abstract class _AddButtonTapped implements DetailFormEvent {
  const factory _AddButtonTapped() = _$AddButtonTappedImpl;
}

/// @nodoc
abstract class _$$SubmitButtonTappedImplCopyWith<$Res> {
  factory _$$SubmitButtonTappedImplCopyWith(_$SubmitButtonTappedImpl value,
          $Res Function(_$SubmitButtonTappedImpl) then) =
      __$$SubmitButtonTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitButtonTappedImplCopyWithImpl<$Res>
    extends _$DetailFormEventCopyWithImpl<$Res, _$SubmitButtonTappedImpl>
    implements _$$SubmitButtonTappedImplCopyWith<$Res> {
  __$$SubmitButtonTappedImplCopyWithImpl(_$SubmitButtonTappedImpl _value,
      $Res Function(_$SubmitButtonTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitButtonTappedImpl implements _SubmitButtonTapped {
  const _$SubmitButtonTappedImpl();

  @override
  String toString() {
    return 'DetailFormEvent.submitButtonTapped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitButtonTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? detailId) viewLoaded,
    required TResult Function(String mainDetailName) mainDetailNameChanged,
    required TResult Function() addButtonTapped,
    required TResult Function() submitButtonTapped,
    required TResult Function(int detailId) deleteButtonTapped,
    required TResult Function(int? detailId, DetailField field, dynamic value)
        detailUpdated,
    required TResult Function(int detailId, String source, bool isDrawing)
        imageSourceSelected,
  }) {
    return submitButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? detailId)? viewLoaded,
    TResult? Function(String mainDetailName)? mainDetailNameChanged,
    TResult? Function()? addButtonTapped,
    TResult? Function()? submitButtonTapped,
    TResult? Function(int detailId)? deleteButtonTapped,
    TResult? Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult? Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
  }) {
    return submitButtonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? detailId)? viewLoaded,
    TResult Function(String mainDetailName)? mainDetailNameChanged,
    TResult Function()? addButtonTapped,
    TResult Function()? submitButtonTapped,
    TResult Function(int detailId)? deleteButtonTapped,
    TResult Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
    required TResult orElse(),
  }) {
    if (submitButtonTapped != null) {
      return submitButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewLoaded value) viewLoaded,
    required TResult Function(_MainDetailNameChanged value)
        mainDetailNameChanged,
    required TResult Function(_AddButtonTapped value) addButtonTapped,
    required TResult Function(_SubmitButtonTapped value) submitButtonTapped,
    required TResult Function(_DeleteButtonTapped value) deleteButtonTapped,
    required TResult Function(_DetailUpdated value) detailUpdated,
    required TResult Function(_ImageSourceSelected value) imageSourceSelected,
  }) {
    return submitButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewLoaded value)? viewLoaded,
    TResult? Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult? Function(_AddButtonTapped value)? addButtonTapped,
    TResult? Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult? Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult? Function(_DetailUpdated value)? detailUpdated,
    TResult? Function(_ImageSourceSelected value)? imageSourceSelected,
  }) {
    return submitButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewLoaded value)? viewLoaded,
    TResult Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult Function(_AddButtonTapped value)? addButtonTapped,
    TResult Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult Function(_DetailUpdated value)? detailUpdated,
    TResult Function(_ImageSourceSelected value)? imageSourceSelected,
    required TResult orElse(),
  }) {
    if (submitButtonTapped != null) {
      return submitButtonTapped(this);
    }
    return orElse();
  }
}

abstract class _SubmitButtonTapped implements DetailFormEvent {
  const factory _SubmitButtonTapped() = _$SubmitButtonTappedImpl;
}

/// @nodoc
abstract class _$$DeleteButtonTappedImplCopyWith<$Res> {
  factory _$$DeleteButtonTappedImplCopyWith(_$DeleteButtonTappedImpl value,
          $Res Function(_$DeleteButtonTappedImpl) then) =
      __$$DeleteButtonTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int detailId});
}

/// @nodoc
class __$$DeleteButtonTappedImplCopyWithImpl<$Res>
    extends _$DetailFormEventCopyWithImpl<$Res, _$DeleteButtonTappedImpl>
    implements _$$DeleteButtonTappedImplCopyWith<$Res> {
  __$$DeleteButtonTappedImplCopyWithImpl(_$DeleteButtonTappedImpl _value,
      $Res Function(_$DeleteButtonTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailId = null,
  }) {
    return _then(_$DeleteButtonTappedImpl(
      detailId: null == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteButtonTappedImpl implements _DeleteButtonTapped {
  const _$DeleteButtonTappedImpl({required this.detailId});

  @override
  final int detailId;

  @override
  String toString() {
    return 'DetailFormEvent.deleteButtonTapped(detailId: $detailId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteButtonTappedImpl &&
            (identical(other.detailId, detailId) ||
                other.detailId == detailId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailId);

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteButtonTappedImplCopyWith<_$DeleteButtonTappedImpl> get copyWith =>
      __$$DeleteButtonTappedImplCopyWithImpl<_$DeleteButtonTappedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? detailId) viewLoaded,
    required TResult Function(String mainDetailName) mainDetailNameChanged,
    required TResult Function() addButtonTapped,
    required TResult Function() submitButtonTapped,
    required TResult Function(int detailId) deleteButtonTapped,
    required TResult Function(int? detailId, DetailField field, dynamic value)
        detailUpdated,
    required TResult Function(int detailId, String source, bool isDrawing)
        imageSourceSelected,
  }) {
    return deleteButtonTapped(detailId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? detailId)? viewLoaded,
    TResult? Function(String mainDetailName)? mainDetailNameChanged,
    TResult? Function()? addButtonTapped,
    TResult? Function()? submitButtonTapped,
    TResult? Function(int detailId)? deleteButtonTapped,
    TResult? Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult? Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
  }) {
    return deleteButtonTapped?.call(detailId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? detailId)? viewLoaded,
    TResult Function(String mainDetailName)? mainDetailNameChanged,
    TResult Function()? addButtonTapped,
    TResult Function()? submitButtonTapped,
    TResult Function(int detailId)? deleteButtonTapped,
    TResult Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
    required TResult orElse(),
  }) {
    if (deleteButtonTapped != null) {
      return deleteButtonTapped(detailId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewLoaded value) viewLoaded,
    required TResult Function(_MainDetailNameChanged value)
        mainDetailNameChanged,
    required TResult Function(_AddButtonTapped value) addButtonTapped,
    required TResult Function(_SubmitButtonTapped value) submitButtonTapped,
    required TResult Function(_DeleteButtonTapped value) deleteButtonTapped,
    required TResult Function(_DetailUpdated value) detailUpdated,
    required TResult Function(_ImageSourceSelected value) imageSourceSelected,
  }) {
    return deleteButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewLoaded value)? viewLoaded,
    TResult? Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult? Function(_AddButtonTapped value)? addButtonTapped,
    TResult? Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult? Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult? Function(_DetailUpdated value)? detailUpdated,
    TResult? Function(_ImageSourceSelected value)? imageSourceSelected,
  }) {
    return deleteButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewLoaded value)? viewLoaded,
    TResult Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult Function(_AddButtonTapped value)? addButtonTapped,
    TResult Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult Function(_DetailUpdated value)? detailUpdated,
    TResult Function(_ImageSourceSelected value)? imageSourceSelected,
    required TResult orElse(),
  }) {
    if (deleteButtonTapped != null) {
      return deleteButtonTapped(this);
    }
    return orElse();
  }
}

abstract class _DeleteButtonTapped implements DetailFormEvent {
  const factory _DeleteButtonTapped({required final int detailId}) =
      _$DeleteButtonTappedImpl;

  int get detailId;

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteButtonTappedImplCopyWith<_$DeleteButtonTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailUpdatedImplCopyWith<$Res> {
  factory _$$DetailUpdatedImplCopyWith(
          _$DetailUpdatedImpl value, $Res Function(_$DetailUpdatedImpl) then) =
      __$$DetailUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? detailId, DetailField field, dynamic value});
}

/// @nodoc
class __$$DetailUpdatedImplCopyWithImpl<$Res>
    extends _$DetailFormEventCopyWithImpl<$Res, _$DetailUpdatedImpl>
    implements _$$DetailUpdatedImplCopyWith<$Res> {
  __$$DetailUpdatedImplCopyWithImpl(
      _$DetailUpdatedImpl _value, $Res Function(_$DetailUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailId = freezed,
    Object? field = null,
    Object? value = freezed,
  }) {
    return _then(_$DetailUpdatedImpl(
      detailId: freezed == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as int?,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as DetailField,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DetailUpdatedImpl implements _DetailUpdated {
  const _$DetailUpdatedImpl(
      {required this.detailId, required this.field, required this.value});

  @override
  final int? detailId;
  @override
  final DetailField field;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'DetailFormEvent.detailUpdated(detailId: $detailId, field: $field, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailUpdatedImpl &&
            (identical(other.detailId, detailId) ||
                other.detailId == detailId) &&
            (identical(other.field, field) || other.field == field) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, detailId, field, const DeepCollectionEquality().hash(value));

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailUpdatedImplCopyWith<_$DetailUpdatedImpl> get copyWith =>
      __$$DetailUpdatedImplCopyWithImpl<_$DetailUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? detailId) viewLoaded,
    required TResult Function(String mainDetailName) mainDetailNameChanged,
    required TResult Function() addButtonTapped,
    required TResult Function() submitButtonTapped,
    required TResult Function(int detailId) deleteButtonTapped,
    required TResult Function(int? detailId, DetailField field, dynamic value)
        detailUpdated,
    required TResult Function(int detailId, String source, bool isDrawing)
        imageSourceSelected,
  }) {
    return detailUpdated(detailId, field, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? detailId)? viewLoaded,
    TResult? Function(String mainDetailName)? mainDetailNameChanged,
    TResult? Function()? addButtonTapped,
    TResult? Function()? submitButtonTapped,
    TResult? Function(int detailId)? deleteButtonTapped,
    TResult? Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult? Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
  }) {
    return detailUpdated?.call(detailId, field, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? detailId)? viewLoaded,
    TResult Function(String mainDetailName)? mainDetailNameChanged,
    TResult Function()? addButtonTapped,
    TResult Function()? submitButtonTapped,
    TResult Function(int detailId)? deleteButtonTapped,
    TResult Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
    required TResult orElse(),
  }) {
    if (detailUpdated != null) {
      return detailUpdated(detailId, field, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewLoaded value) viewLoaded,
    required TResult Function(_MainDetailNameChanged value)
        mainDetailNameChanged,
    required TResult Function(_AddButtonTapped value) addButtonTapped,
    required TResult Function(_SubmitButtonTapped value) submitButtonTapped,
    required TResult Function(_DeleteButtonTapped value) deleteButtonTapped,
    required TResult Function(_DetailUpdated value) detailUpdated,
    required TResult Function(_ImageSourceSelected value) imageSourceSelected,
  }) {
    return detailUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewLoaded value)? viewLoaded,
    TResult? Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult? Function(_AddButtonTapped value)? addButtonTapped,
    TResult? Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult? Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult? Function(_DetailUpdated value)? detailUpdated,
    TResult? Function(_ImageSourceSelected value)? imageSourceSelected,
  }) {
    return detailUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewLoaded value)? viewLoaded,
    TResult Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult Function(_AddButtonTapped value)? addButtonTapped,
    TResult Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult Function(_DetailUpdated value)? detailUpdated,
    TResult Function(_ImageSourceSelected value)? imageSourceSelected,
    required TResult orElse(),
  }) {
    if (detailUpdated != null) {
      return detailUpdated(this);
    }
    return orElse();
  }
}

abstract class _DetailUpdated implements DetailFormEvent {
  const factory _DetailUpdated(
      {required final int? detailId,
      required final DetailField field,
      required final dynamic value}) = _$DetailUpdatedImpl;

  int? get detailId;
  DetailField get field;
  dynamic get value;

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailUpdatedImplCopyWith<_$DetailUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageSourceSelectedImplCopyWith<$Res> {
  factory _$$ImageSourceSelectedImplCopyWith(_$ImageSourceSelectedImpl value,
          $Res Function(_$ImageSourceSelectedImpl) then) =
      __$$ImageSourceSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int detailId, String source, bool isDrawing});
}

/// @nodoc
class __$$ImageSourceSelectedImplCopyWithImpl<$Res>
    extends _$DetailFormEventCopyWithImpl<$Res, _$ImageSourceSelectedImpl>
    implements _$$ImageSourceSelectedImplCopyWith<$Res> {
  __$$ImageSourceSelectedImplCopyWithImpl(_$ImageSourceSelectedImpl _value,
      $Res Function(_$ImageSourceSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailId = null,
    Object? source = null,
    Object? isDrawing = null,
  }) {
    return _then(_$ImageSourceSelectedImpl(
      detailId: null == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      isDrawing: null == isDrawing
          ? _value.isDrawing
          : isDrawing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ImageSourceSelectedImpl implements _ImageSourceSelected {
  const _$ImageSourceSelectedImpl(
      {required this.detailId, required this.source, this.isDrawing = true});

  @override
  final int detailId;
  @override
  final String source;
  @override
  @JsonKey()
  final bool isDrawing;

  @override
  String toString() {
    return 'DetailFormEvent.imageSourceSelected(detailId: $detailId, source: $source, isDrawing: $isDrawing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSourceSelectedImpl &&
            (identical(other.detailId, detailId) ||
                other.detailId == detailId) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.isDrawing, isDrawing) ||
                other.isDrawing == isDrawing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailId, source, isDrawing);

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSourceSelectedImplCopyWith<_$ImageSourceSelectedImpl> get copyWith =>
      __$$ImageSourceSelectedImplCopyWithImpl<_$ImageSourceSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? detailId) viewLoaded,
    required TResult Function(String mainDetailName) mainDetailNameChanged,
    required TResult Function() addButtonTapped,
    required TResult Function() submitButtonTapped,
    required TResult Function(int detailId) deleteButtonTapped,
    required TResult Function(int? detailId, DetailField field, dynamic value)
        detailUpdated,
    required TResult Function(int detailId, String source, bool isDrawing)
        imageSourceSelected,
  }) {
    return imageSourceSelected(detailId, source, isDrawing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? detailId)? viewLoaded,
    TResult? Function(String mainDetailName)? mainDetailNameChanged,
    TResult? Function()? addButtonTapped,
    TResult? Function()? submitButtonTapped,
    TResult? Function(int detailId)? deleteButtonTapped,
    TResult? Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult? Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
  }) {
    return imageSourceSelected?.call(detailId, source, isDrawing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? detailId)? viewLoaded,
    TResult Function(String mainDetailName)? mainDetailNameChanged,
    TResult Function()? addButtonTapped,
    TResult Function()? submitButtonTapped,
    TResult Function(int detailId)? deleteButtonTapped,
    TResult Function(int? detailId, DetailField field, dynamic value)?
        detailUpdated,
    TResult Function(int detailId, String source, bool isDrawing)?
        imageSourceSelected,
    required TResult orElse(),
  }) {
    if (imageSourceSelected != null) {
      return imageSourceSelected(detailId, source, isDrawing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewLoaded value) viewLoaded,
    required TResult Function(_MainDetailNameChanged value)
        mainDetailNameChanged,
    required TResult Function(_AddButtonTapped value) addButtonTapped,
    required TResult Function(_SubmitButtonTapped value) submitButtonTapped,
    required TResult Function(_DeleteButtonTapped value) deleteButtonTapped,
    required TResult Function(_DetailUpdated value) detailUpdated,
    required TResult Function(_ImageSourceSelected value) imageSourceSelected,
  }) {
    return imageSourceSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewLoaded value)? viewLoaded,
    TResult? Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult? Function(_AddButtonTapped value)? addButtonTapped,
    TResult? Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult? Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult? Function(_DetailUpdated value)? detailUpdated,
    TResult? Function(_ImageSourceSelected value)? imageSourceSelected,
  }) {
    return imageSourceSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewLoaded value)? viewLoaded,
    TResult Function(_MainDetailNameChanged value)? mainDetailNameChanged,
    TResult Function(_AddButtonTapped value)? addButtonTapped,
    TResult Function(_SubmitButtonTapped value)? submitButtonTapped,
    TResult Function(_DeleteButtonTapped value)? deleteButtonTapped,
    TResult Function(_DetailUpdated value)? detailUpdated,
    TResult Function(_ImageSourceSelected value)? imageSourceSelected,
    required TResult orElse(),
  }) {
    if (imageSourceSelected != null) {
      return imageSourceSelected(this);
    }
    return orElse();
  }
}

abstract class _ImageSourceSelected implements DetailFormEvent {
  const factory _ImageSourceSelected(
      {required final int detailId,
      required final String source,
      final bool isDrawing}) = _$ImageSourceSelectedImpl;

  int get detailId;
  String get source;
  bool get isDrawing;

  /// Create a copy of DetailFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageSourceSelectedImplCopyWith<_$ImageSourceSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailFormState {
  DetailDto get mainDetail => throw _privateConstructorUsedError;
  List<DetailDto> get subDetails => throw _privateConstructorUsedError;
  String get mainDetailName => throw _privateConstructorUsedError;
  bool get isSaved => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  /// Create a copy of DetailFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailFormStateCopyWith<DetailFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailFormStateCopyWith<$Res> {
  factory $DetailFormStateCopyWith(
          DetailFormState value, $Res Function(DetailFormState) then) =
      _$DetailFormStateCopyWithImpl<$Res, DetailFormState>;
  @useResult
  $Res call(
      {DetailDto mainDetail,
      List<DetailDto> subDetails,
      String mainDetailName,
      bool isSaved,
      bool isSubmitting});
}

/// @nodoc
class _$DetailFormStateCopyWithImpl<$Res, $Val extends DetailFormState>
    implements $DetailFormStateCopyWith<$Res> {
  _$DetailFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainDetail = null,
    Object? subDetails = null,
    Object? mainDetailName = null,
    Object? isSaved = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      mainDetail: null == mainDetail
          ? _value.mainDetail
          : mainDetail // ignore: cast_nullable_to_non_nullable
              as DetailDto,
      subDetails: null == subDetails
          ? _value.subDetails
          : subDetails // ignore: cast_nullable_to_non_nullable
              as List<DetailDto>,
      mainDetailName: null == mainDetailName
          ? _value.mainDetailName
          : mainDetailName // ignore: cast_nullable_to_non_nullable
              as String,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailFormStateImplCopyWith<$Res>
    implements $DetailFormStateCopyWith<$Res> {
  factory _$$DetailFormStateImplCopyWith(_$DetailFormStateImpl value,
          $Res Function(_$DetailFormStateImpl) then) =
      __$$DetailFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DetailDto mainDetail,
      List<DetailDto> subDetails,
      String mainDetailName,
      bool isSaved,
      bool isSubmitting});
}

/// @nodoc
class __$$DetailFormStateImplCopyWithImpl<$Res>
    extends _$DetailFormStateCopyWithImpl<$Res, _$DetailFormStateImpl>
    implements _$$DetailFormStateImplCopyWith<$Res> {
  __$$DetailFormStateImplCopyWithImpl(
      _$DetailFormStateImpl _value, $Res Function(_$DetailFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainDetail = null,
    Object? subDetails = null,
    Object? mainDetailName = null,
    Object? isSaved = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$DetailFormStateImpl(
      mainDetail: null == mainDetail
          ? _value.mainDetail
          : mainDetail // ignore: cast_nullable_to_non_nullable
              as DetailDto,
      subDetails: null == subDetails
          ? _value._subDetails
          : subDetails // ignore: cast_nullable_to_non_nullable
              as List<DetailDto>,
      mainDetailName: null == mainDetailName
          ? _value.mainDetailName
          : mainDetailName // ignore: cast_nullable_to_non_nullable
              as String,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DetailFormStateImpl implements _DetailFormState {
  const _$DetailFormStateImpl(
      {required this.mainDetail,
      required final List<DetailDto> subDetails,
      required this.mainDetailName,
      required this.isSaved,
      required this.isSubmitting})
      : _subDetails = subDetails;

  @override
  final DetailDto mainDetail;
  final List<DetailDto> _subDetails;
  @override
  List<DetailDto> get subDetails {
    if (_subDetails is EqualUnmodifiableListView) return _subDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subDetails);
  }

  @override
  final String mainDetailName;
  @override
  final bool isSaved;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'DetailFormState(mainDetail: $mainDetail, subDetails: $subDetails, mainDetailName: $mainDetailName, isSaved: $isSaved, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailFormStateImpl &&
            (identical(other.mainDetail, mainDetail) ||
                other.mainDetail == mainDetail) &&
            const DeepCollectionEquality()
                .equals(other._subDetails, _subDetails) &&
            (identical(other.mainDetailName, mainDetailName) ||
                other.mainDetailName == mainDetailName) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      mainDetail,
      const DeepCollectionEquality().hash(_subDetails),
      mainDetailName,
      isSaved,
      isSubmitting);

  /// Create a copy of DetailFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailFormStateImplCopyWith<_$DetailFormStateImpl> get copyWith =>
      __$$DetailFormStateImplCopyWithImpl<_$DetailFormStateImpl>(
          this, _$identity);
}

abstract class _DetailFormState implements DetailFormState {
  const factory _DetailFormState(
      {required final DetailDto mainDetail,
      required final List<DetailDto> subDetails,
      required final String mainDetailName,
      required final bool isSaved,
      required final bool isSubmitting}) = _$DetailFormStateImpl;

  @override
  DetailDto get mainDetail;
  @override
  List<DetailDto> get subDetails;
  @override
  String get mainDetailName;
  @override
  bool get isSaved;
  @override
  bool get isSubmitting;

  /// Create a copy of DetailFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailFormStateImplCopyWith<_$DetailFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
