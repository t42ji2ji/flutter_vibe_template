// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'revenuecat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RevenueCatState {

 bool get isPro; VirtualCurrencies? get virtualCurrencies; bool get isInitialized; Offerings? get offerings; String? get error;
/// Create a copy of RevenueCatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RevenueCatStateCopyWith<RevenueCatState> get copyWith => _$RevenueCatStateCopyWithImpl<RevenueCatState>(this as RevenueCatState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RevenueCatState&&(identical(other.isPro, isPro) || other.isPro == isPro)&&(identical(other.virtualCurrencies, virtualCurrencies) || other.virtualCurrencies == virtualCurrencies)&&(identical(other.isInitialized, isInitialized) || other.isInitialized == isInitialized)&&(identical(other.offerings, offerings) || other.offerings == offerings)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isPro,virtualCurrencies,isInitialized,offerings,error);

@override
String toString() {
  return 'RevenueCatState(isPro: $isPro, virtualCurrencies: $virtualCurrencies, isInitialized: $isInitialized, offerings: $offerings, error: $error)';
}


}

/// @nodoc
abstract mixin class $RevenueCatStateCopyWith<$Res>  {
  factory $RevenueCatStateCopyWith(RevenueCatState value, $Res Function(RevenueCatState) _then) = _$RevenueCatStateCopyWithImpl;
@useResult
$Res call({
 bool isPro, VirtualCurrencies? virtualCurrencies, bool isInitialized, Offerings? offerings, String? error
});




}
/// @nodoc
class _$RevenueCatStateCopyWithImpl<$Res>
    implements $RevenueCatStateCopyWith<$Res> {
  _$RevenueCatStateCopyWithImpl(this._self, this._then);

  final RevenueCatState _self;
  final $Res Function(RevenueCatState) _then;

/// Create a copy of RevenueCatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isPro = null,Object? virtualCurrencies = freezed,Object? isInitialized = null,Object? offerings = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
isPro: null == isPro ? _self.isPro : isPro // ignore: cast_nullable_to_non_nullable
as bool,virtualCurrencies: freezed == virtualCurrencies ? _self.virtualCurrencies : virtualCurrencies // ignore: cast_nullable_to_non_nullable
as VirtualCurrencies?,isInitialized: null == isInitialized ? _self.isInitialized : isInitialized // ignore: cast_nullable_to_non_nullable
as bool,offerings: freezed == offerings ? _self.offerings : offerings // ignore: cast_nullable_to_non_nullable
as Offerings?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RevenueCatState].
extension RevenueCatStatePatterns on RevenueCatState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RevenueCatState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RevenueCatState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RevenueCatState value)  $default,){
final _that = this;
switch (_that) {
case _RevenueCatState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RevenueCatState value)?  $default,){
final _that = this;
switch (_that) {
case _RevenueCatState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isPro,  VirtualCurrencies? virtualCurrencies,  bool isInitialized,  Offerings? offerings,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RevenueCatState() when $default != null:
return $default(_that.isPro,_that.virtualCurrencies,_that.isInitialized,_that.offerings,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isPro,  VirtualCurrencies? virtualCurrencies,  bool isInitialized,  Offerings? offerings,  String? error)  $default,) {final _that = this;
switch (_that) {
case _RevenueCatState():
return $default(_that.isPro,_that.virtualCurrencies,_that.isInitialized,_that.offerings,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isPro,  VirtualCurrencies? virtualCurrencies,  bool isInitialized,  Offerings? offerings,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _RevenueCatState() when $default != null:
return $default(_that.isPro,_that.virtualCurrencies,_that.isInitialized,_that.offerings,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _RevenueCatState extends RevenueCatState {
  const _RevenueCatState({this.isPro = false, this.virtualCurrencies, this.isInitialized = false, this.offerings, this.error}): super._();
  

@override@JsonKey() final  bool isPro;
@override final  VirtualCurrencies? virtualCurrencies;
@override@JsonKey() final  bool isInitialized;
@override final  Offerings? offerings;
@override final  String? error;

/// Create a copy of RevenueCatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RevenueCatStateCopyWith<_RevenueCatState> get copyWith => __$RevenueCatStateCopyWithImpl<_RevenueCatState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RevenueCatState&&(identical(other.isPro, isPro) || other.isPro == isPro)&&(identical(other.virtualCurrencies, virtualCurrencies) || other.virtualCurrencies == virtualCurrencies)&&(identical(other.isInitialized, isInitialized) || other.isInitialized == isInitialized)&&(identical(other.offerings, offerings) || other.offerings == offerings)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isPro,virtualCurrencies,isInitialized,offerings,error);

@override
String toString() {
  return 'RevenueCatState(isPro: $isPro, virtualCurrencies: $virtualCurrencies, isInitialized: $isInitialized, offerings: $offerings, error: $error)';
}


}

/// @nodoc
abstract mixin class _$RevenueCatStateCopyWith<$Res> implements $RevenueCatStateCopyWith<$Res> {
  factory _$RevenueCatStateCopyWith(_RevenueCatState value, $Res Function(_RevenueCatState) _then) = __$RevenueCatStateCopyWithImpl;
@override @useResult
$Res call({
 bool isPro, VirtualCurrencies? virtualCurrencies, bool isInitialized, Offerings? offerings, String? error
});




}
/// @nodoc
class __$RevenueCatStateCopyWithImpl<$Res>
    implements _$RevenueCatStateCopyWith<$Res> {
  __$RevenueCatStateCopyWithImpl(this._self, this._then);

  final _RevenueCatState _self;
  final $Res Function(_RevenueCatState) _then;

/// Create a copy of RevenueCatState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isPro = null,Object? virtualCurrencies = freezed,Object? isInitialized = null,Object? offerings = freezed,Object? error = freezed,}) {
  return _then(_RevenueCatState(
isPro: null == isPro ? _self.isPro : isPro // ignore: cast_nullable_to_non_nullable
as bool,virtualCurrencies: freezed == virtualCurrencies ? _self.virtualCurrencies : virtualCurrencies // ignore: cast_nullable_to_non_nullable
as VirtualCurrencies?,isInitialized: null == isInitialized ? _self.isInitialized : isInitialized // ignore: cast_nullable_to_non_nullable
as bool,offerings: freezed == offerings ? _self.offerings : offerings // ignore: cast_nullable_to_non_nullable
as Offerings?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
