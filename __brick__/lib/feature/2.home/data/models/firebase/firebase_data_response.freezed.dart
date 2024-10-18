// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirebaseDataResponse<T> {
  String get name => throw _privateConstructorUsedError;
  T? get fields => throw _privateConstructorUsedError;
  String get createTime => throw _privateConstructorUsedError;
  String get updateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseDataResponseCopyWith<T, FirebaseDataResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseDataResponseCopyWith<T, $Res> {
  factory $FirebaseDataResponseCopyWith(FirebaseDataResponse<T> value,
          $Res Function(FirebaseDataResponse<T>) then) =
      _$FirebaseDataResponseCopyWithImpl<T, $Res, FirebaseDataResponse<T>>;
  @useResult
  $Res call({String name, T? fields, String createTime, String updateTime});
}

/// @nodoc
class _$FirebaseDataResponseCopyWithImpl<T, $Res,
        $Val extends FirebaseDataResponse<T>>
    implements $FirebaseDataResponseCopyWith<T, $Res> {
  _$FirebaseDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fields = freezed,
    Object? createTime = null,
    Object? updateTime = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as T?,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseDataResponseImplCopyWith<T, $Res>
    implements $FirebaseDataResponseCopyWith<T, $Res> {
  factory _$$FirebaseDataResponseImplCopyWith(
          _$FirebaseDataResponseImpl<T> value,
          $Res Function(_$FirebaseDataResponseImpl<T>) then) =
      __$$FirebaseDataResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String name, T? fields, String createTime, String updateTime});
}

/// @nodoc
class __$$FirebaseDataResponseImplCopyWithImpl<T, $Res>
    extends _$FirebaseDataResponseCopyWithImpl<T, $Res,
        _$FirebaseDataResponseImpl<T>>
    implements _$$FirebaseDataResponseImplCopyWith<T, $Res> {
  __$$FirebaseDataResponseImplCopyWithImpl(_$FirebaseDataResponseImpl<T> _value,
      $Res Function(_$FirebaseDataResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fields = freezed,
    Object? createTime = null,
    Object? updateTime = null,
  }) {
    return _then(_$FirebaseDataResponseImpl<T>(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as T?,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirebaseDataResponseImpl<T> extends _FirebaseDataResponse<T> {
  const _$FirebaseDataResponseImpl(
      {required this.name,
      this.fields,
      required this.createTime,
      required this.updateTime})
      : super._();

  @override
  final String name;
  @override
  final T? fields;
  @override
  final String createTime;
  @override
  final String updateTime;

  @override
  String toString() {
    return 'FirebaseDataResponse<$T>(name: $name, fields: $fields, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseDataResponseImpl<T> &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseDataResponseImplCopyWith<T, _$FirebaseDataResponseImpl<T>>
      get copyWith => __$$FirebaseDataResponseImplCopyWithImpl<T,
          _$FirebaseDataResponseImpl<T>>(this, _$identity);
}

abstract class _FirebaseDataResponse<T> extends FirebaseDataResponse<T> {
  const factory _FirebaseDataResponse(
      {required final String name,
      final T? fields,
      required final String createTime,
      required final String updateTime}) = _$FirebaseDataResponseImpl<T>;
  const _FirebaseDataResponse._() : super._();

  @override
  String get name;
  @override
  T? get fields;
  @override
  String get createTime;
  @override
  String get updateTime;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseDataResponseImplCopyWith<T, _$FirebaseDataResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
