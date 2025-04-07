// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FirebaseDataResponse<T> {
  String? get name;
  T? get fields;
  String? get createTime;
  String? get updateTime;

  /// Create a copy of FirebaseDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FirebaseDataResponseCopyWith<T, FirebaseDataResponse<T>> get copyWith =>
      _$FirebaseDataResponseCopyWithImpl<T, FirebaseDataResponse<T>>(
          this as FirebaseDataResponse<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseDataResponse<T> &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.fields, fields) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(fields), createTime, updateTime);

  @override
  String toString() {
    return 'FirebaseDataResponse<$T>(name: $name, fields: $fields, createTime: $createTime, updateTime: $updateTime)';
  }
}

/// @nodoc
abstract mixin class $FirebaseDataResponseCopyWith<T, $Res> {
  factory $FirebaseDataResponseCopyWith(FirebaseDataResponse<T> value,
          $Res Function(FirebaseDataResponse<T>) _then) =
      _$FirebaseDataResponseCopyWithImpl;
  @useResult
  $Res call({String? name, T? fields, String? createTime, String? updateTime});
}

/// @nodoc
class _$FirebaseDataResponseCopyWithImpl<T, $Res>
    implements $FirebaseDataResponseCopyWith<T, $Res> {
  _$FirebaseDataResponseCopyWithImpl(this._self, this._then);

  final FirebaseDataResponse<T> _self;
  final $Res Function(FirebaseDataResponse<T>) _then;

  /// Create a copy of FirebaseDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fields = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _self.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as T?,
      createTime: freezed == createTime
          ? _self.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: freezed == updateTime
          ? _self.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _FirebaseDataResponse<T> extends FirebaseDataResponse<T> {
  const _FirebaseDataResponse(
      {this.name, this.fields, this.createTime, this.updateTime})
      : super._();

  @override
  final String? name;
  @override
  final T? fields;
  @override
  final String? createTime;
  @override
  final String? updateTime;

  /// Create a copy of FirebaseDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FirebaseDataResponseCopyWith<T, _FirebaseDataResponse<T>> get copyWith =>
      __$FirebaseDataResponseCopyWithImpl<T, _FirebaseDataResponse<T>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirebaseDataResponse<T> &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.fields, fields) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(fields), createTime, updateTime);

  @override
  String toString() {
    return 'FirebaseDataResponse<$T>(name: $name, fields: $fields, createTime: $createTime, updateTime: $updateTime)';
  }
}

/// @nodoc
abstract mixin class _$FirebaseDataResponseCopyWith<T, $Res>
    implements $FirebaseDataResponseCopyWith<T, $Res> {
  factory _$FirebaseDataResponseCopyWith(_FirebaseDataResponse<T> value,
          $Res Function(_FirebaseDataResponse<T>) _then) =
      __$FirebaseDataResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String? name, T? fields, String? createTime, String? updateTime});
}

/// @nodoc
class __$FirebaseDataResponseCopyWithImpl<T, $Res>
    implements _$FirebaseDataResponseCopyWith<T, $Res> {
  __$FirebaseDataResponseCopyWithImpl(this._self, this._then);

  final _FirebaseDataResponse<T> _self;
  final $Res Function(_FirebaseDataResponse<T>) _then;

  /// Create a copy of FirebaseDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? fields = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_FirebaseDataResponse<T>(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _self.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as T?,
      createTime: freezed == createTime
          ? _self.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: freezed == updateTime
          ? _self.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
