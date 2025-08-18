// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dot_env_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DotEnvModel {

 String get supabaseUrl; String get supabaseAnonKey; String get revenueCatAppleProductId; String get privacyPolicyUrl; String get termsOfServiceUrl;
/// Create a copy of DotEnvModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DotEnvModelCopyWith<DotEnvModel> get copyWith => _$DotEnvModelCopyWithImpl<DotEnvModel>(this as DotEnvModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DotEnvModel&&(identical(other.supabaseUrl, supabaseUrl) || other.supabaseUrl == supabaseUrl)&&(identical(other.supabaseAnonKey, supabaseAnonKey) || other.supabaseAnonKey == supabaseAnonKey)&&(identical(other.revenueCatAppleProductId, revenueCatAppleProductId) || other.revenueCatAppleProductId == revenueCatAppleProductId)&&(identical(other.privacyPolicyUrl, privacyPolicyUrl) || other.privacyPolicyUrl == privacyPolicyUrl)&&(identical(other.termsOfServiceUrl, termsOfServiceUrl) || other.termsOfServiceUrl == termsOfServiceUrl));
}


@override
int get hashCode => Object.hash(runtimeType,supabaseUrl,supabaseAnonKey,revenueCatAppleProductId,privacyPolicyUrl,termsOfServiceUrl);

@override
String toString() {
  return 'DotEnvModel(supabaseUrl: $supabaseUrl, supabaseAnonKey: $supabaseAnonKey, revenueCatAppleProductId: $revenueCatAppleProductId, privacyPolicyUrl: $privacyPolicyUrl, termsOfServiceUrl: $termsOfServiceUrl)';
}


}

/// @nodoc
abstract mixin class $DotEnvModelCopyWith<$Res>  {
  factory $DotEnvModelCopyWith(DotEnvModel value, $Res Function(DotEnvModel) _then) = _$DotEnvModelCopyWithImpl;
@useResult
$Res call({
 String supabaseUrl, String supabaseAnonKey, String revenueCatAppleProductId, String privacyPolicyUrl, String termsOfServiceUrl
});




}
/// @nodoc
class _$DotEnvModelCopyWithImpl<$Res>
    implements $DotEnvModelCopyWith<$Res> {
  _$DotEnvModelCopyWithImpl(this._self, this._then);

  final DotEnvModel _self;
  final $Res Function(DotEnvModel) _then;

/// Create a copy of DotEnvModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? supabaseUrl = null,Object? supabaseAnonKey = null,Object? revenueCatAppleProductId = null,Object? privacyPolicyUrl = null,Object? termsOfServiceUrl = null,}) {
  return _then(_self.copyWith(
supabaseUrl: null == supabaseUrl ? _self.supabaseUrl : supabaseUrl // ignore: cast_nullable_to_non_nullable
as String,supabaseAnonKey: null == supabaseAnonKey ? _self.supabaseAnonKey : supabaseAnonKey // ignore: cast_nullable_to_non_nullable
as String,revenueCatAppleProductId: null == revenueCatAppleProductId ? _self.revenueCatAppleProductId : revenueCatAppleProductId // ignore: cast_nullable_to_non_nullable
as String,privacyPolicyUrl: null == privacyPolicyUrl ? _self.privacyPolicyUrl : privacyPolicyUrl // ignore: cast_nullable_to_non_nullable
as String,termsOfServiceUrl: null == termsOfServiceUrl ? _self.termsOfServiceUrl : termsOfServiceUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DotEnvModel].
extension DotEnvModelPatterns on DotEnvModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DotEnvModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DotEnvModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DotEnvModel value)  $default,){
final _that = this;
switch (_that) {
case _DotEnvModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DotEnvModel value)?  $default,){
final _that = this;
switch (_that) {
case _DotEnvModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String supabaseUrl,  String supabaseAnonKey,  String revenueCatAppleProductId,  String privacyPolicyUrl,  String termsOfServiceUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DotEnvModel() when $default != null:
return $default(_that.supabaseUrl,_that.supabaseAnonKey,_that.revenueCatAppleProductId,_that.privacyPolicyUrl,_that.termsOfServiceUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String supabaseUrl,  String supabaseAnonKey,  String revenueCatAppleProductId,  String privacyPolicyUrl,  String termsOfServiceUrl)  $default,) {final _that = this;
switch (_that) {
case _DotEnvModel():
return $default(_that.supabaseUrl,_that.supabaseAnonKey,_that.revenueCatAppleProductId,_that.privacyPolicyUrl,_that.termsOfServiceUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String supabaseUrl,  String supabaseAnonKey,  String revenueCatAppleProductId,  String privacyPolicyUrl,  String termsOfServiceUrl)?  $default,) {final _that = this;
switch (_that) {
case _DotEnvModel() when $default != null:
return $default(_that.supabaseUrl,_that.supabaseAnonKey,_that.revenueCatAppleProductId,_that.privacyPolicyUrl,_that.termsOfServiceUrl);case _:
  return null;

}
}

}

/// @nodoc


class _DotEnvModel implements DotEnvModel {
  const _DotEnvModel({required this.supabaseUrl, required this.supabaseAnonKey, required this.revenueCatAppleProductId, required this.privacyPolicyUrl, required this.termsOfServiceUrl});
  

@override final  String supabaseUrl;
@override final  String supabaseAnonKey;
@override final  String revenueCatAppleProductId;
@override final  String privacyPolicyUrl;
@override final  String termsOfServiceUrl;

/// Create a copy of DotEnvModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DotEnvModelCopyWith<_DotEnvModel> get copyWith => __$DotEnvModelCopyWithImpl<_DotEnvModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DotEnvModel&&(identical(other.supabaseUrl, supabaseUrl) || other.supabaseUrl == supabaseUrl)&&(identical(other.supabaseAnonKey, supabaseAnonKey) || other.supabaseAnonKey == supabaseAnonKey)&&(identical(other.revenueCatAppleProductId, revenueCatAppleProductId) || other.revenueCatAppleProductId == revenueCatAppleProductId)&&(identical(other.privacyPolicyUrl, privacyPolicyUrl) || other.privacyPolicyUrl == privacyPolicyUrl)&&(identical(other.termsOfServiceUrl, termsOfServiceUrl) || other.termsOfServiceUrl == termsOfServiceUrl));
}


@override
int get hashCode => Object.hash(runtimeType,supabaseUrl,supabaseAnonKey,revenueCatAppleProductId,privacyPolicyUrl,termsOfServiceUrl);

@override
String toString() {
  return 'DotEnvModel(supabaseUrl: $supabaseUrl, supabaseAnonKey: $supabaseAnonKey, revenueCatAppleProductId: $revenueCatAppleProductId, privacyPolicyUrl: $privacyPolicyUrl, termsOfServiceUrl: $termsOfServiceUrl)';
}


}

/// @nodoc
abstract mixin class _$DotEnvModelCopyWith<$Res> implements $DotEnvModelCopyWith<$Res> {
  factory _$DotEnvModelCopyWith(_DotEnvModel value, $Res Function(_DotEnvModel) _then) = __$DotEnvModelCopyWithImpl;
@override @useResult
$Res call({
 String supabaseUrl, String supabaseAnonKey, String revenueCatAppleProductId, String privacyPolicyUrl, String termsOfServiceUrl
});




}
/// @nodoc
class __$DotEnvModelCopyWithImpl<$Res>
    implements _$DotEnvModelCopyWith<$Res> {
  __$DotEnvModelCopyWithImpl(this._self, this._then);

  final _DotEnvModel _self;
  final $Res Function(_DotEnvModel) _then;

/// Create a copy of DotEnvModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? supabaseUrl = null,Object? supabaseAnonKey = null,Object? revenueCatAppleProductId = null,Object? privacyPolicyUrl = null,Object? termsOfServiceUrl = null,}) {
  return _then(_DotEnvModel(
supabaseUrl: null == supabaseUrl ? _self.supabaseUrl : supabaseUrl // ignore: cast_nullable_to_non_nullable
as String,supabaseAnonKey: null == supabaseAnonKey ? _self.supabaseAnonKey : supabaseAnonKey // ignore: cast_nullable_to_non_nullable
as String,revenueCatAppleProductId: null == revenueCatAppleProductId ? _self.revenueCatAppleProductId : revenueCatAppleProductId // ignore: cast_nullable_to_non_nullable
as String,privacyPolicyUrl: null == privacyPolicyUrl ? _self.privacyPolicyUrl : privacyPolicyUrl // ignore: cast_nullable_to_non_nullable
as String,termsOfServiceUrl: null == termsOfServiceUrl ? _self.termsOfServiceUrl : termsOfServiceUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
