// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_page_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingPageData {

 String get title; String get description; String get imagePath;
/// Create a copy of OnboardingPageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingPageDataCopyWith<OnboardingPageData> get copyWith => _$OnboardingPageDataCopyWithImpl<OnboardingPageData>(this as OnboardingPageData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingPageData&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,imagePath);

@override
String toString() {
  return 'OnboardingPageData(title: $title, description: $description, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class $OnboardingPageDataCopyWith<$Res>  {
  factory $OnboardingPageDataCopyWith(OnboardingPageData value, $Res Function(OnboardingPageData) _then) = _$OnboardingPageDataCopyWithImpl;
@useResult
$Res call({
 String title, String description, String imagePath
});




}
/// @nodoc
class _$OnboardingPageDataCopyWithImpl<$Res>
    implements $OnboardingPageDataCopyWith<$Res> {
  _$OnboardingPageDataCopyWithImpl(this._self, this._then);

  final OnboardingPageData _self;
  final $Res Function(OnboardingPageData) _then;

/// Create a copy of OnboardingPageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? imagePath = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OnboardingPageData].
extension OnboardingPageDataPatterns on OnboardingPageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingPageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingPageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingPageData value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingPageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingPageData value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingPageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  String imagePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingPageData() when $default != null:
return $default(_that.title,_that.description,_that.imagePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  String imagePath)  $default,) {final _that = this;
switch (_that) {
case _OnboardingPageData():
return $default(_that.title,_that.description,_that.imagePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  String imagePath)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingPageData() when $default != null:
return $default(_that.title,_that.description,_that.imagePath);case _:
  return null;

}
}

}

/// @nodoc


class _OnboardingPageData implements OnboardingPageData {
  const _OnboardingPageData({required this.title, required this.description, required this.imagePath});
  

@override final  String title;
@override final  String description;
@override final  String imagePath;

/// Create a copy of OnboardingPageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingPageDataCopyWith<_OnboardingPageData> get copyWith => __$OnboardingPageDataCopyWithImpl<_OnboardingPageData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingPageData&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,imagePath);

@override
String toString() {
  return 'OnboardingPageData(title: $title, description: $description, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class _$OnboardingPageDataCopyWith<$Res> implements $OnboardingPageDataCopyWith<$Res> {
  factory _$OnboardingPageDataCopyWith(_OnboardingPageData value, $Res Function(_OnboardingPageData) _then) = __$OnboardingPageDataCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, String imagePath
});




}
/// @nodoc
class __$OnboardingPageDataCopyWithImpl<$Res>
    implements _$OnboardingPageDataCopyWith<$Res> {
  __$OnboardingPageDataCopyWithImpl(this._self, this._then);

  final _OnboardingPageData _self;
  final $Res Function(_OnboardingPageData) _then;

/// Create a copy of OnboardingPageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? imagePath = null,}) {
  return _then(_OnboardingPageData(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
