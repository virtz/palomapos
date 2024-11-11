// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableServiceBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(List<Order> orderList) saveOrders,
    required TResult Function(MenuItemChild child) addToOrderList,
    required TResult Function(MenuItemChild child) removeOrderFromList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(List<Order> orderList)? saveOrders,
    TResult? Function(MenuItemChild child)? addToOrderList,
    TResult? Function(MenuItemChild child)? removeOrderFromList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(List<Order> orderList)? saveOrders,
    TResult Function(MenuItemChild child)? addToOrderList,
    TResult Function(MenuItemChild child)? removeOrderFromList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_SaveOrders value) saveOrders,
    required TResult Function(_AddOrderToList value) addToOrderList,
    required TResult Function(_RemoveFromList value) removeOrderFromList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_SaveOrders value)? saveOrders,
    TResult? Function(_AddOrderToList value)? addToOrderList,
    TResult? Function(_RemoveFromList value)? removeOrderFromList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_SaveOrders value)? saveOrders,
    TResult Function(_AddOrderToList value)? addToOrderList,
    TResult Function(_RemoveFromList value)? removeOrderFromList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableServiceBlocEventCopyWith<$Res> {
  factory $TableServiceBlocEventCopyWith(TableServiceBlocEvent value,
          $Res Function(TableServiceBlocEvent) then) =
      _$TableServiceBlocEventCopyWithImpl<$Res, TableServiceBlocEvent>;
}

/// @nodoc
class _$TableServiceBlocEventCopyWithImpl<$Res,
        $Val extends TableServiceBlocEvent>
    implements $TableServiceBlocEventCopyWith<$Res> {
  _$TableServiceBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadOrdersImplCopyWith<$Res> {
  factory _$$LoadOrdersImplCopyWith(
          _$LoadOrdersImpl value, $Res Function(_$LoadOrdersImpl) then) =
      __$$LoadOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadOrdersImplCopyWithImpl<$Res>
    extends _$TableServiceBlocEventCopyWithImpl<$Res, _$LoadOrdersImpl>
    implements _$$LoadOrdersImplCopyWith<$Res> {
  __$$LoadOrdersImplCopyWithImpl(
      _$LoadOrdersImpl _value, $Res Function(_$LoadOrdersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadOrdersImpl implements _LoadOrders {
  const _$LoadOrdersImpl();

  @override
  String toString() {
    return 'TableServiceBlocEvent.loadOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(List<Order> orderList) saveOrders,
    required TResult Function(MenuItemChild child) addToOrderList,
    required TResult Function(MenuItemChild child) removeOrderFromList,
  }) {
    return loadOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(List<Order> orderList)? saveOrders,
    TResult? Function(MenuItemChild child)? addToOrderList,
    TResult? Function(MenuItemChild child)? removeOrderFromList,
  }) {
    return loadOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(List<Order> orderList)? saveOrders,
    TResult Function(MenuItemChild child)? addToOrderList,
    TResult Function(MenuItemChild child)? removeOrderFromList,
    required TResult orElse(),
  }) {
    if (loadOrders != null) {
      return loadOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_SaveOrders value) saveOrders,
    required TResult Function(_AddOrderToList value) addToOrderList,
    required TResult Function(_RemoveFromList value) removeOrderFromList,
  }) {
    return loadOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_SaveOrders value)? saveOrders,
    TResult? Function(_AddOrderToList value)? addToOrderList,
    TResult? Function(_RemoveFromList value)? removeOrderFromList,
  }) {
    return loadOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_SaveOrders value)? saveOrders,
    TResult Function(_AddOrderToList value)? addToOrderList,
    TResult Function(_RemoveFromList value)? removeOrderFromList,
    required TResult orElse(),
  }) {
    if (loadOrders != null) {
      return loadOrders(this);
    }
    return orElse();
  }
}

abstract class _LoadOrders implements TableServiceBlocEvent {
  const factory _LoadOrders() = _$LoadOrdersImpl;
}

/// @nodoc
abstract class _$$SaveOrdersImplCopyWith<$Res> {
  factory _$$SaveOrdersImplCopyWith(
          _$SaveOrdersImpl value, $Res Function(_$SaveOrdersImpl) then) =
      __$$SaveOrdersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Order> orderList});
}

/// @nodoc
class __$$SaveOrdersImplCopyWithImpl<$Res>
    extends _$TableServiceBlocEventCopyWithImpl<$Res, _$SaveOrdersImpl>
    implements _$$SaveOrdersImplCopyWith<$Res> {
  __$$SaveOrdersImplCopyWithImpl(
      _$SaveOrdersImpl _value, $Res Function(_$SaveOrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
  }) {
    return _then(_$SaveOrdersImpl(
      null == orderList
          ? _value._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc

class _$SaveOrdersImpl implements _SaveOrders {
  const _$SaveOrdersImpl(final List<Order> orderList) : _orderList = orderList;

  final List<Order> _orderList;
  @override
  List<Order> get orderList {
    if (_orderList is EqualUnmodifiableListView) return _orderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderList);
  }

  @override
  String toString() {
    return 'TableServiceBlocEvent.saveOrders(orderList: $orderList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveOrdersImpl &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orderList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveOrdersImplCopyWith<_$SaveOrdersImpl> get copyWith =>
      __$$SaveOrdersImplCopyWithImpl<_$SaveOrdersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(List<Order> orderList) saveOrders,
    required TResult Function(MenuItemChild child) addToOrderList,
    required TResult Function(MenuItemChild child) removeOrderFromList,
  }) {
    return saveOrders(orderList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(List<Order> orderList)? saveOrders,
    TResult? Function(MenuItemChild child)? addToOrderList,
    TResult? Function(MenuItemChild child)? removeOrderFromList,
  }) {
    return saveOrders?.call(orderList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(List<Order> orderList)? saveOrders,
    TResult Function(MenuItemChild child)? addToOrderList,
    TResult Function(MenuItemChild child)? removeOrderFromList,
    required TResult orElse(),
  }) {
    if (saveOrders != null) {
      return saveOrders(orderList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_SaveOrders value) saveOrders,
    required TResult Function(_AddOrderToList value) addToOrderList,
    required TResult Function(_RemoveFromList value) removeOrderFromList,
  }) {
    return saveOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_SaveOrders value)? saveOrders,
    TResult? Function(_AddOrderToList value)? addToOrderList,
    TResult? Function(_RemoveFromList value)? removeOrderFromList,
  }) {
    return saveOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_SaveOrders value)? saveOrders,
    TResult Function(_AddOrderToList value)? addToOrderList,
    TResult Function(_RemoveFromList value)? removeOrderFromList,
    required TResult orElse(),
  }) {
    if (saveOrders != null) {
      return saveOrders(this);
    }
    return orElse();
  }
}

abstract class _SaveOrders implements TableServiceBlocEvent {
  const factory _SaveOrders(final List<Order> orderList) = _$SaveOrdersImpl;

  List<Order> get orderList;
  @JsonKey(ignore: true)
  _$$SaveOrdersImplCopyWith<_$SaveOrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddOrderToListImplCopyWith<$Res> {
  factory _$$AddOrderToListImplCopyWith(_$AddOrderToListImpl value,
          $Res Function(_$AddOrderToListImpl) then) =
      __$$AddOrderToListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MenuItemChild child});
}

/// @nodoc
class __$$AddOrderToListImplCopyWithImpl<$Res>
    extends _$TableServiceBlocEventCopyWithImpl<$Res, _$AddOrderToListImpl>
    implements _$$AddOrderToListImplCopyWith<$Res> {
  __$$AddOrderToListImplCopyWithImpl(
      _$AddOrderToListImpl _value, $Res Function(_$AddOrderToListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
  }) {
    return _then(_$AddOrderToListImpl(
      null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as MenuItemChild,
    ));
  }
}

/// @nodoc

class _$AddOrderToListImpl implements _AddOrderToList {
  const _$AddOrderToListImpl(this.child);

  @override
  final MenuItemChild child;

  @override
  String toString() {
    return 'TableServiceBlocEvent.addToOrderList(child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrderToListImpl &&
            (identical(other.child, child) || other.child == child));
  }

  @override
  int get hashCode => Object.hash(runtimeType, child);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrderToListImplCopyWith<_$AddOrderToListImpl> get copyWith =>
      __$$AddOrderToListImplCopyWithImpl<_$AddOrderToListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(List<Order> orderList) saveOrders,
    required TResult Function(MenuItemChild child) addToOrderList,
    required TResult Function(MenuItemChild child) removeOrderFromList,
  }) {
    return addToOrderList(child);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(List<Order> orderList)? saveOrders,
    TResult? Function(MenuItemChild child)? addToOrderList,
    TResult? Function(MenuItemChild child)? removeOrderFromList,
  }) {
    return addToOrderList?.call(child);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(List<Order> orderList)? saveOrders,
    TResult Function(MenuItemChild child)? addToOrderList,
    TResult Function(MenuItemChild child)? removeOrderFromList,
    required TResult orElse(),
  }) {
    if (addToOrderList != null) {
      return addToOrderList(child);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_SaveOrders value) saveOrders,
    required TResult Function(_AddOrderToList value) addToOrderList,
    required TResult Function(_RemoveFromList value) removeOrderFromList,
  }) {
    return addToOrderList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_SaveOrders value)? saveOrders,
    TResult? Function(_AddOrderToList value)? addToOrderList,
    TResult? Function(_RemoveFromList value)? removeOrderFromList,
  }) {
    return addToOrderList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_SaveOrders value)? saveOrders,
    TResult Function(_AddOrderToList value)? addToOrderList,
    TResult Function(_RemoveFromList value)? removeOrderFromList,
    required TResult orElse(),
  }) {
    if (addToOrderList != null) {
      return addToOrderList(this);
    }
    return orElse();
  }
}

abstract class _AddOrderToList implements TableServiceBlocEvent {
  const factory _AddOrderToList(final MenuItemChild child) =
      _$AddOrderToListImpl;

  MenuItemChild get child;
  @JsonKey(ignore: true)
  _$$AddOrderToListImplCopyWith<_$AddOrderToListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromListImplCopyWith<$Res> {
  factory _$$RemoveFromListImplCopyWith(_$RemoveFromListImpl value,
          $Res Function(_$RemoveFromListImpl) then) =
      __$$RemoveFromListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MenuItemChild child});
}

/// @nodoc
class __$$RemoveFromListImplCopyWithImpl<$Res>
    extends _$TableServiceBlocEventCopyWithImpl<$Res, _$RemoveFromListImpl>
    implements _$$RemoveFromListImplCopyWith<$Res> {
  __$$RemoveFromListImplCopyWithImpl(
      _$RemoveFromListImpl _value, $Res Function(_$RemoveFromListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
  }) {
    return _then(_$RemoveFromListImpl(
      null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as MenuItemChild,
    ));
  }
}

/// @nodoc

class _$RemoveFromListImpl implements _RemoveFromList {
  const _$RemoveFromListImpl(this.child);

  @override
  final MenuItemChild child;

  @override
  String toString() {
    return 'TableServiceBlocEvent.removeOrderFromList(child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromListImpl &&
            (identical(other.child, child) || other.child == child));
  }

  @override
  int get hashCode => Object.hash(runtimeType, child);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromListImplCopyWith<_$RemoveFromListImpl> get copyWith =>
      __$$RemoveFromListImplCopyWithImpl<_$RemoveFromListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(List<Order> orderList) saveOrders,
    required TResult Function(MenuItemChild child) addToOrderList,
    required TResult Function(MenuItemChild child) removeOrderFromList,
  }) {
    return removeOrderFromList(child);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(List<Order> orderList)? saveOrders,
    TResult? Function(MenuItemChild child)? addToOrderList,
    TResult? Function(MenuItemChild child)? removeOrderFromList,
  }) {
    return removeOrderFromList?.call(child);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(List<Order> orderList)? saveOrders,
    TResult Function(MenuItemChild child)? addToOrderList,
    TResult Function(MenuItemChild child)? removeOrderFromList,
    required TResult orElse(),
  }) {
    if (removeOrderFromList != null) {
      return removeOrderFromList(child);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_SaveOrders value) saveOrders,
    required TResult Function(_AddOrderToList value) addToOrderList,
    required TResult Function(_RemoveFromList value) removeOrderFromList,
  }) {
    return removeOrderFromList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_SaveOrders value)? saveOrders,
    TResult? Function(_AddOrderToList value)? addToOrderList,
    TResult? Function(_RemoveFromList value)? removeOrderFromList,
  }) {
    return removeOrderFromList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_SaveOrders value)? saveOrders,
    TResult Function(_AddOrderToList value)? addToOrderList,
    TResult Function(_RemoveFromList value)? removeOrderFromList,
    required TResult orElse(),
  }) {
    if (removeOrderFromList != null) {
      return removeOrderFromList(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromList implements TableServiceBlocEvent {
  const factory _RemoveFromList(final MenuItemChild child) =
      _$RemoveFromListImpl;

  MenuItemChild get child;
  @JsonKey(ignore: true)
  _$$RemoveFromListImplCopyWith<_$RemoveFromListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TableServiceBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<MenuItemChild> orderList) $default, {
    required TResult Function() loading,
    required TResult Function(AppFailure failure) loadFailure,
    required TResult Function(List<Order> orderList) loadSuccess,
    required TResult Function(AppFailure failure) saveFailure,
    required TResult Function() saveSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<MenuItemChild> orderList)? $default, {
    TResult? Function()? loading,
    TResult? Function(AppFailure failure)? loadFailure,
    TResult? Function(List<Order> orderList)? loadSuccess,
    TResult? Function(AppFailure failure)? saveFailure,
    TResult? Function()? saveSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<MenuItemChild> orderList)? $default, {
    TResult Function()? loading,
    TResult Function(AppFailure failure)? loadFailure,
    TResult Function(List<Order> orderList)? loadSuccess,
    TResult Function(AppFailure failure)? saveFailure,
    TResult Function()? saveSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TableServiceBlocState value) $default, {
    required TResult Function(_LoadingMovies value) loading,
    required TResult Function(_OrderLoadFailure value) loadFailure,
    required TResult Function(_OrderLoadSuccess value) loadSuccess,
    required TResult Function(_OrderSaveFailure value) saveFailure,
    required TResult Function(_OrderSaveSuccess value) saveSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TableServiceBlocState value)? $default, {
    TResult? Function(_LoadingMovies value)? loading,
    TResult? Function(_OrderLoadFailure value)? loadFailure,
    TResult? Function(_OrderLoadSuccess value)? loadSuccess,
    TResult? Function(_OrderSaveFailure value)? saveFailure,
    TResult? Function(_OrderSaveSuccess value)? saveSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TableServiceBlocState value)? $default, {
    TResult Function(_LoadingMovies value)? loading,
    TResult Function(_OrderLoadFailure value)? loadFailure,
    TResult Function(_OrderLoadSuccess value)? loadSuccess,
    TResult Function(_OrderSaveFailure value)? saveFailure,
    TResult Function(_OrderSaveSuccess value)? saveSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableServiceBlocStateCopyWith<$Res> {
  factory $TableServiceBlocStateCopyWith(TableServiceBlocState value,
          $Res Function(TableServiceBlocState) then) =
      _$TableServiceBlocStateCopyWithImpl<$Res, TableServiceBlocState>;
}

/// @nodoc
class _$TableServiceBlocStateCopyWithImpl<$Res,
        $Val extends TableServiceBlocState>
    implements $TableServiceBlocStateCopyWith<$Res> {
  _$TableServiceBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TableServiceBlocStateImplCopyWith<$Res> {
  factory _$$TableServiceBlocStateImplCopyWith(
          _$TableServiceBlocStateImpl value,
          $Res Function(_$TableServiceBlocStateImpl) then) =
      __$$TableServiceBlocStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MenuItemChild> orderList});
}

/// @nodoc
class __$$TableServiceBlocStateImplCopyWithImpl<$Res>
    extends _$TableServiceBlocStateCopyWithImpl<$Res,
        _$TableServiceBlocStateImpl>
    implements _$$TableServiceBlocStateImplCopyWith<$Res> {
  __$$TableServiceBlocStateImplCopyWithImpl(_$TableServiceBlocStateImpl _value,
      $Res Function(_$TableServiceBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
  }) {
    return _then(_$TableServiceBlocStateImpl(
      orderList: null == orderList
          ? _value._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<MenuItemChild>,
    ));
  }
}

/// @nodoc

class _$TableServiceBlocStateImpl implements _TableServiceBlocState {
  const _$TableServiceBlocStateImpl(
      {required final List<MenuItemChild> orderList})
      : _orderList = orderList;

  final List<MenuItemChild> _orderList;
  @override
  List<MenuItemChild> get orderList {
    if (_orderList is EqualUnmodifiableListView) return _orderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderList);
  }

  @override
  String toString() {
    return 'TableServiceBlocState(orderList: $orderList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableServiceBlocStateImpl &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orderList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableServiceBlocStateImplCopyWith<_$TableServiceBlocStateImpl>
      get copyWith => __$$TableServiceBlocStateImplCopyWithImpl<
          _$TableServiceBlocStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<MenuItemChild> orderList) $default, {
    required TResult Function() loading,
    required TResult Function(AppFailure failure) loadFailure,
    required TResult Function(List<Order> orderList) loadSuccess,
    required TResult Function(AppFailure failure) saveFailure,
    required TResult Function() saveSuccess,
  }) {
    return $default(orderList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<MenuItemChild> orderList)? $default, {
    TResult? Function()? loading,
    TResult? Function(AppFailure failure)? loadFailure,
    TResult? Function(List<Order> orderList)? loadSuccess,
    TResult? Function(AppFailure failure)? saveFailure,
    TResult? Function()? saveSuccess,
  }) {
    return $default?.call(orderList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<MenuItemChild> orderList)? $default, {
    TResult Function()? loading,
    TResult Function(AppFailure failure)? loadFailure,
    TResult Function(List<Order> orderList)? loadSuccess,
    TResult Function(AppFailure failure)? saveFailure,
    TResult Function()? saveSuccess,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(orderList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TableServiceBlocState value) $default, {
    required TResult Function(_LoadingMovies value) loading,
    required TResult Function(_OrderLoadFailure value) loadFailure,
    required TResult Function(_OrderLoadSuccess value) loadSuccess,
    required TResult Function(_OrderSaveFailure value) saveFailure,
    required TResult Function(_OrderSaveSuccess value) saveSuccess,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TableServiceBlocState value)? $default, {
    TResult? Function(_LoadingMovies value)? loading,
    TResult? Function(_OrderLoadFailure value)? loadFailure,
    TResult? Function(_OrderLoadSuccess value)? loadSuccess,
    TResult? Function(_OrderSaveFailure value)? saveFailure,
    TResult? Function(_OrderSaveSuccess value)? saveSuccess,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TableServiceBlocState value)? $default, {
    TResult Function(_LoadingMovies value)? loading,
    TResult Function(_OrderLoadFailure value)? loadFailure,
    TResult Function(_OrderLoadSuccess value)? loadSuccess,
    TResult Function(_OrderSaveFailure value)? saveFailure,
    TResult Function(_OrderSaveSuccess value)? saveSuccess,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TableServiceBlocState implements TableServiceBlocState {
  const factory _TableServiceBlocState(
          {required final List<MenuItemChild> orderList}) =
      _$TableServiceBlocStateImpl;

  List<MenuItemChild> get orderList;
  @JsonKey(ignore: true)
  _$$TableServiceBlocStateImplCopyWith<_$TableServiceBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingMoviesImplCopyWith<$Res> {
  factory _$$LoadingMoviesImplCopyWith(
          _$LoadingMoviesImpl value, $Res Function(_$LoadingMoviesImpl) then) =
      __$$LoadingMoviesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMoviesImplCopyWithImpl<$Res>
    extends _$TableServiceBlocStateCopyWithImpl<$Res, _$LoadingMoviesImpl>
    implements _$$LoadingMoviesImplCopyWith<$Res> {
  __$$LoadingMoviesImplCopyWithImpl(
      _$LoadingMoviesImpl _value, $Res Function(_$LoadingMoviesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingMoviesImpl implements _LoadingMovies {
  const _$LoadingMoviesImpl();

  @override
  String toString() {
    return 'TableServiceBlocState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingMoviesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<MenuItemChild> orderList) $default, {
    required TResult Function() loading,
    required TResult Function(AppFailure failure) loadFailure,
    required TResult Function(List<Order> orderList) loadSuccess,
    required TResult Function(AppFailure failure) saveFailure,
    required TResult Function() saveSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<MenuItemChild> orderList)? $default, {
    TResult? Function()? loading,
    TResult? Function(AppFailure failure)? loadFailure,
    TResult? Function(List<Order> orderList)? loadSuccess,
    TResult? Function(AppFailure failure)? saveFailure,
    TResult? Function()? saveSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<MenuItemChild> orderList)? $default, {
    TResult Function()? loading,
    TResult Function(AppFailure failure)? loadFailure,
    TResult Function(List<Order> orderList)? loadSuccess,
    TResult Function(AppFailure failure)? saveFailure,
    TResult Function()? saveSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TableServiceBlocState value) $default, {
    required TResult Function(_LoadingMovies value) loading,
    required TResult Function(_OrderLoadFailure value) loadFailure,
    required TResult Function(_OrderLoadSuccess value) loadSuccess,
    required TResult Function(_OrderSaveFailure value) saveFailure,
    required TResult Function(_OrderSaveSuccess value) saveSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TableServiceBlocState value)? $default, {
    TResult? Function(_LoadingMovies value)? loading,
    TResult? Function(_OrderLoadFailure value)? loadFailure,
    TResult? Function(_OrderLoadSuccess value)? loadSuccess,
    TResult? Function(_OrderSaveFailure value)? saveFailure,
    TResult? Function(_OrderSaveSuccess value)? saveSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TableServiceBlocState value)? $default, {
    TResult Function(_LoadingMovies value)? loading,
    TResult Function(_OrderLoadFailure value)? loadFailure,
    TResult Function(_OrderLoadSuccess value)? loadSuccess,
    TResult Function(_OrderSaveFailure value)? saveFailure,
    TResult Function(_OrderSaveSuccess value)? saveSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingMovies implements TableServiceBlocState {
  const factory _LoadingMovies() = _$LoadingMoviesImpl;
}

/// @nodoc
abstract class _$$OrderLoadFailureImplCopyWith<$Res> {
  factory _$$OrderLoadFailureImplCopyWith(_$OrderLoadFailureImpl value,
          $Res Function(_$OrderLoadFailureImpl) then) =
      __$$OrderLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppFailure failure});

  $AppFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$OrderLoadFailureImplCopyWithImpl<$Res>
    extends _$TableServiceBlocStateCopyWithImpl<$Res, _$OrderLoadFailureImpl>
    implements _$$OrderLoadFailureImplCopyWith<$Res> {
  __$$OrderLoadFailureImplCopyWithImpl(_$OrderLoadFailureImpl _value,
      $Res Function(_$OrderLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$OrderLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppFailureCopyWith<$Res> get failure {
    return $AppFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$OrderLoadFailureImpl implements _OrderLoadFailure {
  const _$OrderLoadFailureImpl(this.failure);

  @override
  final AppFailure failure;

  @override
  String toString() {
    return 'TableServiceBlocState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLoadFailureImplCopyWith<_$OrderLoadFailureImpl> get copyWith =>
      __$$OrderLoadFailureImplCopyWithImpl<_$OrderLoadFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<MenuItemChild> orderList) $default, {
    required TResult Function() loading,
    required TResult Function(AppFailure failure) loadFailure,
    required TResult Function(List<Order> orderList) loadSuccess,
    required TResult Function(AppFailure failure) saveFailure,
    required TResult Function() saveSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<MenuItemChild> orderList)? $default, {
    TResult? Function()? loading,
    TResult? Function(AppFailure failure)? loadFailure,
    TResult? Function(List<Order> orderList)? loadSuccess,
    TResult? Function(AppFailure failure)? saveFailure,
    TResult? Function()? saveSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<MenuItemChild> orderList)? $default, {
    TResult Function()? loading,
    TResult Function(AppFailure failure)? loadFailure,
    TResult Function(List<Order> orderList)? loadSuccess,
    TResult Function(AppFailure failure)? saveFailure,
    TResult Function()? saveSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TableServiceBlocState value) $default, {
    required TResult Function(_LoadingMovies value) loading,
    required TResult Function(_OrderLoadFailure value) loadFailure,
    required TResult Function(_OrderLoadSuccess value) loadSuccess,
    required TResult Function(_OrderSaveFailure value) saveFailure,
    required TResult Function(_OrderSaveSuccess value) saveSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TableServiceBlocState value)? $default, {
    TResult? Function(_LoadingMovies value)? loading,
    TResult? Function(_OrderLoadFailure value)? loadFailure,
    TResult? Function(_OrderLoadSuccess value)? loadSuccess,
    TResult? Function(_OrderSaveFailure value)? saveFailure,
    TResult? Function(_OrderSaveSuccess value)? saveSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TableServiceBlocState value)? $default, {
    TResult Function(_LoadingMovies value)? loading,
    TResult Function(_OrderLoadFailure value)? loadFailure,
    TResult Function(_OrderLoadSuccess value)? loadSuccess,
    TResult Function(_OrderSaveFailure value)? saveFailure,
    TResult Function(_OrderSaveSuccess value)? saveSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _OrderLoadFailure implements TableServiceBlocState {
  const factory _OrderLoadFailure(final AppFailure failure) =
      _$OrderLoadFailureImpl;

  AppFailure get failure;
  @JsonKey(ignore: true)
  _$$OrderLoadFailureImplCopyWith<_$OrderLoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderLoadSuccessImplCopyWith<$Res> {
  factory _$$OrderLoadSuccessImplCopyWith(_$OrderLoadSuccessImpl value,
          $Res Function(_$OrderLoadSuccessImpl) then) =
      __$$OrderLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Order> orderList});
}

/// @nodoc
class __$$OrderLoadSuccessImplCopyWithImpl<$Res>
    extends _$TableServiceBlocStateCopyWithImpl<$Res, _$OrderLoadSuccessImpl>
    implements _$$OrderLoadSuccessImplCopyWith<$Res> {
  __$$OrderLoadSuccessImplCopyWithImpl(_$OrderLoadSuccessImpl _value,
      $Res Function(_$OrderLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
  }) {
    return _then(_$OrderLoadSuccessImpl(
      null == orderList
          ? _value._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc

class _$OrderLoadSuccessImpl implements _OrderLoadSuccess {
  const _$OrderLoadSuccessImpl(final List<Order> orderList)
      : _orderList = orderList;

  final List<Order> _orderList;
  @override
  List<Order> get orderList {
    if (_orderList is EqualUnmodifiableListView) return _orderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderList);
  }

  @override
  String toString() {
    return 'TableServiceBlocState.loadSuccess(orderList: $orderList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLoadSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orderList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLoadSuccessImplCopyWith<_$OrderLoadSuccessImpl> get copyWith =>
      __$$OrderLoadSuccessImplCopyWithImpl<_$OrderLoadSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<MenuItemChild> orderList) $default, {
    required TResult Function() loading,
    required TResult Function(AppFailure failure) loadFailure,
    required TResult Function(List<Order> orderList) loadSuccess,
    required TResult Function(AppFailure failure) saveFailure,
    required TResult Function() saveSuccess,
  }) {
    return loadSuccess(orderList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<MenuItemChild> orderList)? $default, {
    TResult? Function()? loading,
    TResult? Function(AppFailure failure)? loadFailure,
    TResult? Function(List<Order> orderList)? loadSuccess,
    TResult? Function(AppFailure failure)? saveFailure,
    TResult? Function()? saveSuccess,
  }) {
    return loadSuccess?.call(orderList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<MenuItemChild> orderList)? $default, {
    TResult Function()? loading,
    TResult Function(AppFailure failure)? loadFailure,
    TResult Function(List<Order> orderList)? loadSuccess,
    TResult Function(AppFailure failure)? saveFailure,
    TResult Function()? saveSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(orderList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TableServiceBlocState value) $default, {
    required TResult Function(_LoadingMovies value) loading,
    required TResult Function(_OrderLoadFailure value) loadFailure,
    required TResult Function(_OrderLoadSuccess value) loadSuccess,
    required TResult Function(_OrderSaveFailure value) saveFailure,
    required TResult Function(_OrderSaveSuccess value) saveSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TableServiceBlocState value)? $default, {
    TResult? Function(_LoadingMovies value)? loading,
    TResult? Function(_OrderLoadFailure value)? loadFailure,
    TResult? Function(_OrderLoadSuccess value)? loadSuccess,
    TResult? Function(_OrderSaveFailure value)? saveFailure,
    TResult? Function(_OrderSaveSuccess value)? saveSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TableServiceBlocState value)? $default, {
    TResult Function(_LoadingMovies value)? loading,
    TResult Function(_OrderLoadFailure value)? loadFailure,
    TResult Function(_OrderLoadSuccess value)? loadSuccess,
    TResult Function(_OrderSaveFailure value)? saveFailure,
    TResult Function(_OrderSaveSuccess value)? saveSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _OrderLoadSuccess implements TableServiceBlocState {
  const factory _OrderLoadSuccess(final List<Order> orderList) =
      _$OrderLoadSuccessImpl;

  List<Order> get orderList;
  @JsonKey(ignore: true)
  _$$OrderLoadSuccessImplCopyWith<_$OrderLoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderSaveFailureImplCopyWith<$Res> {
  factory _$$OrderSaveFailureImplCopyWith(_$OrderSaveFailureImpl value,
          $Res Function(_$OrderSaveFailureImpl) then) =
      __$$OrderSaveFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppFailure failure});

  $AppFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$OrderSaveFailureImplCopyWithImpl<$Res>
    extends _$TableServiceBlocStateCopyWithImpl<$Res, _$OrderSaveFailureImpl>
    implements _$$OrderSaveFailureImplCopyWith<$Res> {
  __$$OrderSaveFailureImplCopyWithImpl(_$OrderSaveFailureImpl _value,
      $Res Function(_$OrderSaveFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$OrderSaveFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppFailureCopyWith<$Res> get failure {
    return $AppFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$OrderSaveFailureImpl implements _OrderSaveFailure {
  const _$OrderSaveFailureImpl(this.failure);

  @override
  final AppFailure failure;

  @override
  String toString() {
    return 'TableServiceBlocState.saveFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderSaveFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderSaveFailureImplCopyWith<_$OrderSaveFailureImpl> get copyWith =>
      __$$OrderSaveFailureImplCopyWithImpl<_$OrderSaveFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<MenuItemChild> orderList) $default, {
    required TResult Function() loading,
    required TResult Function(AppFailure failure) loadFailure,
    required TResult Function(List<Order> orderList) loadSuccess,
    required TResult Function(AppFailure failure) saveFailure,
    required TResult Function() saveSuccess,
  }) {
    return saveFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<MenuItemChild> orderList)? $default, {
    TResult? Function()? loading,
    TResult? Function(AppFailure failure)? loadFailure,
    TResult? Function(List<Order> orderList)? loadSuccess,
    TResult? Function(AppFailure failure)? saveFailure,
    TResult? Function()? saveSuccess,
  }) {
    return saveFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<MenuItemChild> orderList)? $default, {
    TResult Function()? loading,
    TResult Function(AppFailure failure)? loadFailure,
    TResult Function(List<Order> orderList)? loadSuccess,
    TResult Function(AppFailure failure)? saveFailure,
    TResult Function()? saveSuccess,
    required TResult orElse(),
  }) {
    if (saveFailure != null) {
      return saveFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TableServiceBlocState value) $default, {
    required TResult Function(_LoadingMovies value) loading,
    required TResult Function(_OrderLoadFailure value) loadFailure,
    required TResult Function(_OrderLoadSuccess value) loadSuccess,
    required TResult Function(_OrderSaveFailure value) saveFailure,
    required TResult Function(_OrderSaveSuccess value) saveSuccess,
  }) {
    return saveFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TableServiceBlocState value)? $default, {
    TResult? Function(_LoadingMovies value)? loading,
    TResult? Function(_OrderLoadFailure value)? loadFailure,
    TResult? Function(_OrderLoadSuccess value)? loadSuccess,
    TResult? Function(_OrderSaveFailure value)? saveFailure,
    TResult? Function(_OrderSaveSuccess value)? saveSuccess,
  }) {
    return saveFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TableServiceBlocState value)? $default, {
    TResult Function(_LoadingMovies value)? loading,
    TResult Function(_OrderLoadFailure value)? loadFailure,
    TResult Function(_OrderLoadSuccess value)? loadSuccess,
    TResult Function(_OrderSaveFailure value)? saveFailure,
    TResult Function(_OrderSaveSuccess value)? saveSuccess,
    required TResult orElse(),
  }) {
    if (saveFailure != null) {
      return saveFailure(this);
    }
    return orElse();
  }
}

abstract class _OrderSaveFailure implements TableServiceBlocState {
  const factory _OrderSaveFailure(final AppFailure failure) =
      _$OrderSaveFailureImpl;

  AppFailure get failure;
  @JsonKey(ignore: true)
  _$$OrderSaveFailureImplCopyWith<_$OrderSaveFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderSaveSuccessImplCopyWith<$Res> {
  factory _$$OrderSaveSuccessImplCopyWith(_$OrderSaveSuccessImpl value,
          $Res Function(_$OrderSaveSuccessImpl) then) =
      __$$OrderSaveSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderSaveSuccessImplCopyWithImpl<$Res>
    extends _$TableServiceBlocStateCopyWithImpl<$Res, _$OrderSaveSuccessImpl>
    implements _$$OrderSaveSuccessImplCopyWith<$Res> {
  __$$OrderSaveSuccessImplCopyWithImpl(_$OrderSaveSuccessImpl _value,
      $Res Function(_$OrderSaveSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderSaveSuccessImpl implements _OrderSaveSuccess {
  const _$OrderSaveSuccessImpl();

  @override
  String toString() {
    return 'TableServiceBlocState.saveSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderSaveSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<MenuItemChild> orderList) $default, {
    required TResult Function() loading,
    required TResult Function(AppFailure failure) loadFailure,
    required TResult Function(List<Order> orderList) loadSuccess,
    required TResult Function(AppFailure failure) saveFailure,
    required TResult Function() saveSuccess,
  }) {
    return saveSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<MenuItemChild> orderList)? $default, {
    TResult? Function()? loading,
    TResult? Function(AppFailure failure)? loadFailure,
    TResult? Function(List<Order> orderList)? loadSuccess,
    TResult? Function(AppFailure failure)? saveFailure,
    TResult? Function()? saveSuccess,
  }) {
    return saveSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<MenuItemChild> orderList)? $default, {
    TResult Function()? loading,
    TResult Function(AppFailure failure)? loadFailure,
    TResult Function(List<Order> orderList)? loadSuccess,
    TResult Function(AppFailure failure)? saveFailure,
    TResult Function()? saveSuccess,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TableServiceBlocState value) $default, {
    required TResult Function(_LoadingMovies value) loading,
    required TResult Function(_OrderLoadFailure value) loadFailure,
    required TResult Function(_OrderLoadSuccess value) loadSuccess,
    required TResult Function(_OrderSaveFailure value) saveFailure,
    required TResult Function(_OrderSaveSuccess value) saveSuccess,
  }) {
    return saveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TableServiceBlocState value)? $default, {
    TResult? Function(_LoadingMovies value)? loading,
    TResult? Function(_OrderLoadFailure value)? loadFailure,
    TResult? Function(_OrderLoadSuccess value)? loadSuccess,
    TResult? Function(_OrderSaveFailure value)? saveFailure,
    TResult? Function(_OrderSaveSuccess value)? saveSuccess,
  }) {
    return saveSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TableServiceBlocState value)? $default, {
    TResult Function(_LoadingMovies value)? loading,
    TResult Function(_OrderLoadFailure value)? loadFailure,
    TResult Function(_OrderLoadSuccess value)? loadSuccess,
    TResult Function(_OrderSaveFailure value)? saveFailure,
    TResult Function(_OrderSaveSuccess value)? saveSuccess,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess(this);
    }
    return orElse();
  }
}

abstract class _OrderSaveSuccess implements TableServiceBlocState {
  const factory _OrderSaveSuccess() = _$OrderSaveSuccessImpl;
}
