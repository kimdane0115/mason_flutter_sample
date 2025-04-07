// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommonRequest<T> {
// required int iconCodePoint,
  T? get fields;

  /// Create a copy of CommonRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommonRequestCopyWith<T, CommonRequest<T>> get copyWith =>
      _$CommonRequestCopyWithImpl<T, CommonRequest<T>>(
          this as CommonRequest<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommonRequest<T> &&
            const DeepCollectionEquality().equals(other.fields, fields));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fields));

  @override
  String toString() {
    return 'CommonRequest<$T>(fields: $fields)';
  }
}

/// @nodoc
abstract mixin class $CommonRequestCopyWith<T, $Res> {
  factory $CommonRequestCopyWith(
          CommonRequest<T> value, $Res Function(CommonRequest<T>) _then) =
      _$CommonRequestCopyWithImpl;
  @useResult
  $Res call({T? fields});
}

/// @nodoc
class _$CommonRequestCopyWithImpl<T, $Res>
    implements $CommonRequestCopyWith<T, $Res> {
  _$CommonRequestCopyWithImpl(this._self, this._then);

  final CommonRequest<T> _self;
  final $Res Function(CommonRequest<T>) _then;

  /// Create a copy of CommonRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_self.copyWith(
      fields: freezed == fields
          ? _self.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _CommonRequest<T> extends CommonRequest<T> {
  const _CommonRequest({this.fields}) : super._();

// required int iconCodePoint,
  @override
  final T? fields;

  /// Create a copy of CommonRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CommonRequestCopyWith<T, _CommonRequest<T>> get copyWith =>
      __$CommonRequestCopyWithImpl<T, _CommonRequest<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommonRequest<T> &&
            const DeepCollectionEquality().equals(other.fields, fields));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fields));

  @override
  String toString() {
    return 'CommonRequest<$T>(fields: $fields)';
  }
}

/// @nodoc
abstract mixin class _$CommonRequestCopyWith<T, $Res>
    implements $CommonRequestCopyWith<T, $Res> {
  factory _$CommonRequestCopyWith(
          _CommonRequest<T> value, $Res Function(_CommonRequest<T>) _then) =
      __$CommonRequestCopyWithImpl;
  @override
  @useResult
  $Res call({T? fields});
}

/// @nodoc
class __$CommonRequestCopyWithImpl<T, $Res>
    implements _$CommonRequestCopyWith<T, $Res> {
  __$CommonRequestCopyWithImpl(this._self, this._then);

  final _CommonRequest<T> _self;
  final $Res Function(_CommonRequest<T>) _then;

  /// Create a copy of CommonRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_CommonRequest<T>(
      fields: freezed == fields
          ? _self.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

// dart format on
