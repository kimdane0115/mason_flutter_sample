// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DataRequest<T> {
// required int iconCodePoint,
  T? get data;

  /// Create a copy of DataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataRequestCopyWith<T, DataRequest<T>> get copyWith =>
      _$DataRequestCopyWithImpl<T, DataRequest<T>>(
          this as DataRequest<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataRequest<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'DataRequest<$T>(data: $data)';
  }
}

/// @nodoc
abstract mixin class $DataRequestCopyWith<T, $Res> {
  factory $DataRequestCopyWith(
          DataRequest<T> value, $Res Function(DataRequest<T>) _then) =
      _$DataRequestCopyWithImpl;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class _$DataRequestCopyWithImpl<T, $Res>
    implements $DataRequestCopyWith<T, $Res> {
  _$DataRequestCopyWithImpl(this._self, this._then);

  final DataRequest<T> _self;
  final $Res Function(DataRequest<T>) _then;

  /// Create a copy of DataRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _DataRequest<T> extends DataRequest<T> {
  const _DataRequest({this.data}) : super._();

// required int iconCodePoint,
  @override
  final T? data;

  /// Create a copy of DataRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DataRequestCopyWith<T, _DataRequest<T>> get copyWith =>
      __$DataRequestCopyWithImpl<T, _DataRequest<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataRequest<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'DataRequest<$T>(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$DataRequestCopyWith<T, $Res>
    implements $DataRequestCopyWith<T, $Res> {
  factory _$DataRequestCopyWith(
          _DataRequest<T> value, $Res Function(_DataRequest<T>) _then) =
      __$DataRequestCopyWithImpl;
  @override
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$DataRequestCopyWithImpl<T, $Res>
    implements _$DataRequestCopyWith<T, $Res> {
  __$DataRequestCopyWithImpl(this._self, this._then);

  final _DataRequest<T> _self;
  final $Res Function(_DataRequest<T>) _then;

  /// Create a copy of DataRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_DataRequest<T>(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

// dart format on
