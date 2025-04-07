// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DataResponse<T> {
  List<T>? get documents;

  /// Create a copy of DataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataResponseCopyWith<T, DataResponse<T>> get copyWith =>
      _$DataResponseCopyWithImpl<T, DataResponse<T>>(
          this as DataResponse<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataResponse<T> &&
            const DeepCollectionEquality().equals(other.documents, documents));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(documents));

  @override
  String toString() {
    return 'DataResponse<$T>(documents: $documents)';
  }
}

/// @nodoc
abstract mixin class $DataResponseCopyWith<T, $Res> {
  factory $DataResponseCopyWith(
          DataResponse<T> value, $Res Function(DataResponse<T>) _then) =
      _$DataResponseCopyWithImpl;
  @useResult
  $Res call({List<T>? documents});
}

/// @nodoc
class _$DataResponseCopyWithImpl<T, $Res>
    implements $DataResponseCopyWith<T, $Res> {
  _$DataResponseCopyWithImpl(this._self, this._then);

  final DataResponse<T> _self;
  final $Res Function(DataResponse<T>) _then;

  /// Create a copy of DataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = freezed,
  }) {
    return _then(_self.copyWith(
      documents: freezed == documents
          ? _self.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

/// @nodoc

class _DataResponse<T> extends DataResponse<T> {
  const _DataResponse({final List<T>? documents})
      : _documents = documents,
        super._();

  final List<T>? _documents;
  @override
  List<T>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of DataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DataResponseCopyWith<T, _DataResponse<T>> get copyWith =>
      __$DataResponseCopyWithImpl<T, _DataResponse<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataResponse<T> &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_documents));

  @override
  String toString() {
    return 'DataResponse<$T>(documents: $documents)';
  }
}

/// @nodoc
abstract mixin class _$DataResponseCopyWith<T, $Res>
    implements $DataResponseCopyWith<T, $Res> {
  factory _$DataResponseCopyWith(
          _DataResponse<T> value, $Res Function(_DataResponse<T>) _then) =
      __$DataResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<T>? documents});
}

/// @nodoc
class __$DataResponseCopyWithImpl<T, $Res>
    implements _$DataResponseCopyWith<T, $Res> {
  __$DataResponseCopyWithImpl(this._self, this._then);

  final _DataResponse<T> _self;
  final $Res Function(_DataResponse<T>) _then;

  /// Create a copy of DataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? documents = freezed,
  }) {
    return _then(_DataResponse<T>(
      documents: freezed == documents
          ? _self._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

// dart format on
