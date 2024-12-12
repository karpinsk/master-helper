// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ordersLoaded,
    required TResult Function(String? orderNumber) searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ordersLoaded,
    TResult? Function(String? orderNumber)? searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ordersLoaded,
    TResult Function(String? orderNumber)? searchQueryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrdersLoaded value) ordersLoaded,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrdersLoaded value)? ordersLoaded,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrdersLoaded value)? ordersLoaded,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OrdersLoadedImplCopyWith<$Res> {
  factory _$$OrdersLoadedImplCopyWith(
          _$OrdersLoadedImpl value, $Res Function(_$OrdersLoadedImpl) then) =
      __$$OrdersLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrdersLoadedImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$OrdersLoadedImpl>
    implements _$$OrdersLoadedImplCopyWith<$Res> {
  __$$OrdersLoadedImplCopyWithImpl(
      _$OrdersLoadedImpl _value, $Res Function(_$OrdersLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrdersLoadedImpl with DiagnosticableTreeMixin implements _OrdersLoaded {
  const _$OrdersLoadedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrdersEvent.ordersLoaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'OrdersEvent.ordersLoaded'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrdersLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ordersLoaded,
    required TResult Function(String? orderNumber) searchQueryChanged,
  }) {
    return ordersLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ordersLoaded,
    TResult? Function(String? orderNumber)? searchQueryChanged,
  }) {
    return ordersLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ordersLoaded,
    TResult Function(String? orderNumber)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (ordersLoaded != null) {
      return ordersLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrdersLoaded value) ordersLoaded,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
  }) {
    return ordersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrdersLoaded value)? ordersLoaded,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
  }) {
    return ordersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrdersLoaded value)? ordersLoaded,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (ordersLoaded != null) {
      return ordersLoaded(this);
    }
    return orElse();
  }
}

abstract class _OrdersLoaded implements OrdersEvent {
  const factory _OrdersLoaded() = _$OrdersLoadedImpl;
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
    extends _$OrdersEventCopyWithImpl<$Res, _$SearchQueryChangedImpl>
    implements _$$SearchQueryChangedImplCopyWith<$Res> {
  __$$SearchQueryChangedImplCopyWithImpl(_$SearchQueryChangedImpl _value,
      $Res Function(_$SearchQueryChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersEvent
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
    return 'OrdersEvent.searchQueryChanged(orderNumber: $orderNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrdersEvent.searchQueryChanged'))
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

  /// Create a copy of OrdersEvent
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
    required TResult Function() ordersLoaded,
    required TResult Function(String? orderNumber) searchQueryChanged,
  }) {
    return searchQueryChanged(orderNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ordersLoaded,
    TResult? Function(String? orderNumber)? searchQueryChanged,
  }) {
    return searchQueryChanged?.call(orderNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ordersLoaded,
    TResult Function(String? orderNumber)? searchQueryChanged,
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
    required TResult Function(_OrdersLoaded value) ordersLoaded,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
  }) {
    return searchQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrdersLoaded value)? ordersLoaded,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
  }) {
    return searchQueryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrdersLoaded value)? ordersLoaded,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (searchQueryChanged != null) {
      return searchQueryChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchQueryChanged implements OrdersEvent {
  const factory _SearchQueryChanged(final String? orderNumber) =
      _$SearchQueryChangedImpl;

  String? get orderNumber;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchQueryChangedImplCopyWith<_$SearchQueryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrdersState {
  List<Detail> get details => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
  @useResult
  $Res call(
      {List<Detail> details,
      bool isLoading,
      String? searchQuery,
      bool hasError});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
    Object? isLoading = null,
    Object? searchQuery = freezed,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Detail>,
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
    implements $OrdersStateCopyWith<$Res> {
  factory _$$SpecificationStateImplCopyWith(_$SpecificationStateImpl value,
          $Res Function(_$SpecificationStateImpl) then) =
      __$$SpecificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Detail> details,
      bool isLoading,
      String? searchQuery,
      bool hasError});
}

/// @nodoc
class __$$SpecificationStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$SpecificationStateImpl>
    implements _$$SpecificationStateImplCopyWith<$Res> {
  __$$SpecificationStateImplCopyWithImpl(_$SpecificationStateImpl _value,
      $Res Function(_$SpecificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
    Object? isLoading = null,
    Object? searchQuery = freezed,
    Object? hasError = null,
  }) {
    return _then(_$SpecificationStateImpl(
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<Detail>,
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
  final bool isLoading;
  @override
  final String? searchQuery;
  @override
  final bool hasError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrdersState(details: $details, isLoading: $isLoading, searchQuery: $searchQuery, hasError: $hasError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrdersState'))
      ..add(DiagnosticsProperty('details', details))
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
      isLoading,
      searchQuery,
      hasError);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecificationStateImplCopyWith<_$SpecificationStateImpl> get copyWith =>
      __$$SpecificationStateImplCopyWithImpl<_$SpecificationStateImpl>(
          this, _$identity);
}

abstract class _SpecificationState implements OrdersState {
  const factory _SpecificationState(
      {required final List<Detail> details,
      required final bool isLoading,
      final String? searchQuery,
      required final bool hasError}) = _$SpecificationStateImpl;

  @override
  List<Detail> get details;
  @override
  bool get isLoading;
  @override
  String? get searchQuery;
  @override
  bool get hasError;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecificationStateImplCopyWith<_$SpecificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
