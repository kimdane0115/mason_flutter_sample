// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommonRequest<T> {
// required int iconCodePoint,
  T? get fields => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommonRequestCopyWith<T, CommonRequest<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonRequestCopyWith<T, $Res> {
  factory $CommonRequestCopyWith(
          CommonRequest<T> value, $Res Function(CommonRequest<T>) then) =
      _$CommonRequestCopyWithImpl<T, $Res, CommonRequest<T>>;
  @useResult
  $Res call({T? fields});
}

/// @nodoc
class _$CommonRequestCopyWithImpl<T, $Res, $Val extends CommonRequest<T>>
    implements $CommonRequestCopyWith<T, $Res> {
  _$CommonRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonRequestImplCopyWith<T, $Res>
    implements $CommonRequestCopyWith<T, $Res> {
  factory _$$CommonRequestImplCopyWith(_$CommonRequestImpl<T> value,
          $Res Function(_$CommonRequestImpl<T>) then) =
      __$$CommonRequestImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? fields});
}

/// @nodoc
class __$$CommonRequestImplCopyWithImpl<T, $Res>
    extends _$CommonRequestCopyWithImpl<T, $Res, _$CommonRequestImpl<T>>
    implements _$$CommonRequestImplCopyWith<T, $Res> {
  __$$CommonRequestImplCopyWithImpl(_$CommonRequestImpl<T> _value,
      $Res Function(_$CommonRequestImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_$CommonRequestImpl<T>(
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$CommonRequestImpl<T> extends _CommonRequest<T> {
  const _$CommonRequestImpl({this.fields}) : super._();

// required int iconCodePoint,
  @override
  final T? fields;

  @override
  String toString() {
    return 'CommonRequest<$T>(fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonRequestImpl<T> &&
            const DeepCollectionEquality().equals(other.fields, fields));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonRequestImplCopyWith<T, _$CommonRequestImpl<T>> get copyWith =>
      __$$CommonRequestImplCopyWithImpl<T, _$CommonRequestImpl<T>>(
          this, _$identity);
}

abstract class _CommonRequest<T> extends CommonRequest<T> {
  const factory _CommonRequest({final T? fields}) = _$CommonRequestImpl<T>;
  const _CommonRequest._() : super._();

  @override // required int iconCodePoint,
  T? get fields;
  @override
  @JsonKey(ignore: true)
  _$$CommonRequestImplCopyWith<T, _$CommonRequestImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
