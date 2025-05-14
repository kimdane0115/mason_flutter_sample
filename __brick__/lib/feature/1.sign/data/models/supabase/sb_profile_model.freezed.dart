// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sb_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SbProfileModel {
  int get id;
  String get email;
  String get name;
  String get profileImageUrl;
  String get accessToken;
  String? get idToken;
  String get fcmToken;
  String get status;
  DateTime get createdAt;

  /// Create a copy of SbProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SbProfileModelCopyWith<SbProfileModel> get copyWith =>
      _$SbProfileModelCopyWithImpl<SbProfileModel>(
          this as SbProfileModel, _$identity);

  /// Serializes this SbProfileModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SbProfileModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, name, profileImageUrl,
      accessToken, idToken, fcmToken, status, createdAt);

  @override
  String toString() {
    return 'SbProfileModel(id: $id, email: $email, name: $name, profileImageUrl: $profileImageUrl, accessToken: $accessToken, idToken: $idToken, fcmToken: $fcmToken, status: $status, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $SbProfileModelCopyWith<$Res> {
  factory $SbProfileModelCopyWith(
          SbProfileModel value, $Res Function(SbProfileModel) _then) =
      _$SbProfileModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String email,
      String name,
      String profileImageUrl,
      String accessToken,
      String? idToken,
      String fcmToken,
      String status,
      DateTime createdAt});
}

/// @nodoc
class _$SbProfileModelCopyWithImpl<$Res>
    implements $SbProfileModelCopyWith<$Res> {
  _$SbProfileModelCopyWithImpl(this._self, this._then);

  final SbProfileModel _self;
  final $Res Function(SbProfileModel) _then;

  /// Create a copy of SbProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? profileImageUrl = null,
    Object? accessToken = null,
    Object? idToken = freezed,
    Object? fcmToken = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _self.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: freezed == idToken
          ? _self.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: null == fcmToken
          ? _self.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SbProfileModel implements SbProfileModel {
  _SbProfileModel(
      {required this.id,
      required this.email,
      required this.name,
      required this.profileImageUrl,
      required this.accessToken,
      this.idToken,
      required this.fcmToken,
      required this.status,
      required this.createdAt});
  factory _SbProfileModel.fromJson(Map<String, dynamic> json) =>
      _$SbProfileModelFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String name;
  @override
  final String profileImageUrl;
  @override
  final String accessToken;
  @override
  final String? idToken;
  @override
  final String fcmToken;
  @override
  final String status;
  @override
  final DateTime createdAt;

  /// Create a copy of SbProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SbProfileModelCopyWith<_SbProfileModel> get copyWith =>
      __$SbProfileModelCopyWithImpl<_SbProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SbProfileModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SbProfileModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, name, profileImageUrl,
      accessToken, idToken, fcmToken, status, createdAt);

  @override
  String toString() {
    return 'SbProfileModel(id: $id, email: $email, name: $name, profileImageUrl: $profileImageUrl, accessToken: $accessToken, idToken: $idToken, fcmToken: $fcmToken, status: $status, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$SbProfileModelCopyWith<$Res>
    implements $SbProfileModelCopyWith<$Res> {
  factory _$SbProfileModelCopyWith(
          _SbProfileModel value, $Res Function(_SbProfileModel) _then) =
      __$SbProfileModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String email,
      String name,
      String profileImageUrl,
      String accessToken,
      String? idToken,
      String fcmToken,
      String status,
      DateTime createdAt});
}

/// @nodoc
class __$SbProfileModelCopyWithImpl<$Res>
    implements _$SbProfileModelCopyWith<$Res> {
  __$SbProfileModelCopyWithImpl(this._self, this._then);

  final _SbProfileModel _self;
  final $Res Function(_SbProfileModel) _then;

  /// Create a copy of SbProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? profileImageUrl = null,
    Object? accessToken = null,
    Object? idToken = freezed,
    Object? fcmToken = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_SbProfileModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _self.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: freezed == idToken
          ? _self.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: null == fcmToken
          ? _self.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
