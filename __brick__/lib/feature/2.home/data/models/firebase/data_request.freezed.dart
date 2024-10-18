// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataRequest<T> {
// required int iconCodePoint,
  T? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataRequestCopyWith<T, DataRequest<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataRequestCopyWith<T, $Res> {
  factory $DataRequestCopyWith(
          DataRequest<T> value, $Res Function(DataRequest<T>) then) =
      _$DataRequestCopyWithImpl<T, $Res, DataRequest<T>>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class _$DataRequestCopyWithImpl<T, $Res, $Val extends DataRequest<T>>
    implements $DataRequestCopyWith<T, $Res> {
  _$DataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataRequestImplCopyWith<T, $Res>
    implements $DataRequestCopyWith<T, $Res> {
  factory _$$DataRequestImplCopyWith(_$DataRequestImpl<T> value,
          $Res Function(_$DataRequestImpl<T>) then) =
      __$$DataRequestImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$DataRequestImplCopyWithImpl<T, $Res>
    extends _$DataRequestCopyWithImpl<T, $Res, _$DataRequestImpl<T>>
    implements _$$DataRequestImplCopyWith<T, $Res> {
  __$$DataRequestImplCopyWithImpl(
      _$DataRequestImpl<T> _value, $Res Function(_$DataRequestImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DataRequestImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$DataRequestImpl<T> extends _DataRequest<T> {
  const _$DataRequestImpl({this.data}) : super._();

// required int iconCodePoint,
  @override
  final T? data;

  @override
  String toString() {
    return 'DataRequest<$T>(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataRequestImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataRequestImplCopyWith<T, _$DataRequestImpl<T>> get copyWith =>
      __$$DataRequestImplCopyWithImpl<T, _$DataRequestImpl<T>>(
          this, _$identity);
}

abstract class _DataRequest<T> extends DataRequest<T> {
  const factory _DataRequest({final T? data}) = _$DataRequestImpl<T>;
  const _DataRequest._() : super._();

  @override // required int iconCodePoint,
  T? get data;
  @override
  @JsonKey(ignore: true)
  _$$DataRequestImplCopyWith<T, _$DataRequestImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
