// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sb_member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SbMemberModel _$SbMemberModelFromJson(Map<String, dynamic> json) {
  return _SbMemberModel.fromJson(json);
}

/// @nodoc
mixin _$SbMemberModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get fcm_token => throw _privateConstructorUsedError;
  String get profile_image_url => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SbMemberModelCopyWith<SbMemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SbMemberModelCopyWith<$Res> {
  factory $SbMemberModelCopyWith(
          SbMemberModel value, $Res Function(SbMemberModel) then) =
      _$SbMemberModelCopyWithImpl<$Res, SbMemberModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String fcm_token,
      String profile_image_url,
      DateTime created_at});
}

/// @nodoc
class _$SbMemberModelCopyWithImpl<$Res, $Val extends SbMemberModel>
    implements $SbMemberModelCopyWith<$Res> {
  _$SbMemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fcm_token = null,
    Object? profile_image_url = null,
    Object? created_at = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fcm_token: null == fcm_token
          ? _value.fcm_token
          : fcm_token // ignore: cast_nullable_to_non_nullable
              as String,
      profile_image_url: null == profile_image_url
          ? _value.profile_image_url
          : profile_image_url // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SbMemberModelImplCopyWith<$Res>
    implements $SbMemberModelCopyWith<$Res> {
  factory _$$SbMemberModelImplCopyWith(
          _$SbMemberModelImpl value, $Res Function(_$SbMemberModelImpl) then) =
      __$$SbMemberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String fcm_token,
      String profile_image_url,
      DateTime created_at});
}

/// @nodoc
class __$$SbMemberModelImplCopyWithImpl<$Res>
    extends _$SbMemberModelCopyWithImpl<$Res, _$SbMemberModelImpl>
    implements _$$SbMemberModelImplCopyWith<$Res> {
  __$$SbMemberModelImplCopyWithImpl(
      _$SbMemberModelImpl _value, $Res Function(_$SbMemberModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fcm_token = null,
    Object? profile_image_url = null,
    Object? created_at = null,
  }) {
    return _then(_$SbMemberModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fcm_token: null == fcm_token
          ? _value.fcm_token
          : fcm_token // ignore: cast_nullable_to_non_nullable
              as String,
      profile_image_url: null == profile_image_url
          ? _value.profile_image_url
          : profile_image_url // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$SbMemberModelImpl implements _SbMemberModel {
  _$SbMemberModelImpl(
      {required this.id,
      required this.name,
      required this.fcm_token,
      required this.profile_image_url,
      required this.created_at});

  factory _$SbMemberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SbMemberModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String fcm_token;
  @override
  final String profile_image_url;
  @override
  final DateTime created_at;

  @override
  String toString() {
    return 'SbMemberModel(id: $id, name: $name, fcm_token: $fcm_token, profile_image_url: $profile_image_url, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SbMemberModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fcm_token, fcm_token) ||
                other.fcm_token == fcm_token) &&
            (identical(other.profile_image_url, profile_image_url) ||
                other.profile_image_url == profile_image_url) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, fcm_token, profile_image_url, created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SbMemberModelImplCopyWith<_$SbMemberModelImpl> get copyWith =>
      __$$SbMemberModelImplCopyWithImpl<_$SbMemberModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SbMemberModelImplToJson(
      this,
    );
  }
}

abstract class _SbMemberModel implements SbMemberModel {
  factory _SbMemberModel(
      {required final int id,
      required final String name,
      required final String fcm_token,
      required final String profile_image_url,
      required final DateTime created_at}) = _$SbMemberModelImpl;

  factory _SbMemberModel.fromJson(Map<String, dynamic> json) =
      _$SbMemberModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get fcm_token;
  @override
  String get profile_image_url;
  @override
  DateTime get created_at;
  @override
  @JsonKey(ignore: true)
  _$$SbMemberModelImplCopyWith<_$SbMemberModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
