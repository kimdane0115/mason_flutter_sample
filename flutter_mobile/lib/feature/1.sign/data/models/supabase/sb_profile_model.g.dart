// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sb_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SbProfileModel _$SbProfileModelFromJson(Map<String, dynamic> json) =>
    _SbProfileModel(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      name: json['name'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
      accessToken: json['accessToken'] as String,
      idToken: json['idToken'] as String?,
      fcmToken: json['fcmToken'] as String,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$SbProfileModelToJson(_SbProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'profileImageUrl': instance.profileImageUrl,
      'accessToken': instance.accessToken,
      'idToken': instance.idToken,
      'fcmToken': instance.fcmToken,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
    };
