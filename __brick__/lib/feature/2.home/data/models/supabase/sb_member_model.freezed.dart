// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sb_member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SbMemberModel {
  int get id;
  String get name;
  String get fcm_token;
  String get profile_image_url;
  DateTime get created_at;

  /// Create a copy of SbMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SbMemberModelCopyWith<SbMemberModel> get copyWith =>
      _$SbMemberModelCopyWithImpl<SbMemberModel>(
          this as SbMemberModel, _$identity);

  /// Serializes this SbMemberModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SbMemberModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fcm_token, fcm_token) ||
                other.fcm_token == fcm_token) &&
            (identical(other.profile_image_url, profile_image_url) ||
                other.profile_image_url == profile_image_url) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, fcm_token, profile_image_url, created_at);

  @override
  String toString() {
    return 'SbMemberModel(id: $id, name: $name, fcm_token: $fcm_token, profile_image_url: $profile_image_url, created_at: $created_at)';
  }
}

/// @nodoc
abstract mixin class $SbMemberModelCopyWith<$Res> {
  factory $SbMemberModelCopyWith(
          SbMemberModel value, $Res Function(SbMemberModel) _then) =
      _$SbMemberModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String fcm_token,
      String profile_image_url,
      DateTime created_at});
}

/// @nodoc
class _$SbMemberModelCopyWithImpl<$Res>
    implements $SbMemberModelCopyWith<$Res> {
  _$SbMemberModelCopyWithImpl(this._self, this._then);

  final SbMemberModel _self;
  final $Res Function(SbMemberModel) _then;

  /// Create a copy of SbMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fcm_token = null,
    Object? profile_image_url = null,
    Object? created_at = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fcm_token: null == fcm_token
          ? _self.fcm_token
          : fcm_token // ignore: cast_nullable_to_non_nullable
              as String,
      profile_image_url: null == profile_image_url
          ? _self.profile_image_url
          : profile_image_url // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _self.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _SbMemberModel implements SbMemberModel {
  _SbMemberModel(
      {required this.id,
      required this.name,
      required this.fcm_token,
      required this.profile_image_url,
      required this.created_at});
  factory _SbMemberModel.fromJson(Map<String, dynamic> json) =>
      _$SbMemberModelFromJson(json);

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

  /// Create a copy of SbMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SbMemberModelCopyWith<_SbMemberModel> get copyWith =>
      __$SbMemberModelCopyWithImpl<_SbMemberModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SbMemberModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SbMemberModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fcm_token, fcm_token) ||
                other.fcm_token == fcm_token) &&
            (identical(other.profile_image_url, profile_image_url) ||
                other.profile_image_url == profile_image_url) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, fcm_token, profile_image_url, created_at);

  @override
  String toString() {
    return 'SbMemberModel(id: $id, name: $name, fcm_token: $fcm_token, profile_image_url: $profile_image_url, created_at: $created_at)';
  }
}

/// @nodoc
abstract mixin class _$SbMemberModelCopyWith<$Res>
    implements $SbMemberModelCopyWith<$Res> {
  factory _$SbMemberModelCopyWith(
          _SbMemberModel value, $Res Function(_SbMemberModel) _then) =
      __$SbMemberModelCopyWithImpl;
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
class __$SbMemberModelCopyWithImpl<$Res>
    implements _$SbMemberModelCopyWith<$Res> {
  __$SbMemberModelCopyWithImpl(this._self, this._then);

  final _SbMemberModel _self;
  final $Res Function(_SbMemberModel) _then;

  /// Create a copy of SbMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fcm_token = null,
    Object? profile_image_url = null,
    Object? created_at = null,
  }) {
    return _then(_SbMemberModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fcm_token: null == fcm_token
          ? _self.fcm_token
          : fcm_token // ignore: cast_nullable_to_non_nullable
              as String,
      profile_image_url: null == profile_image_url
          ? _self.profile_image_url
          : profile_image_url // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _self.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
