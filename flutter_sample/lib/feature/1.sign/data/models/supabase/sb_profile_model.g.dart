// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sb_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SbProfileModelImpl _$$SbProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$SbProfileModelImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      name: json['name'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
      accessToken: json['accessToken'] as String,
      idToken: json['idToken'] as String,
      fcmToken: json['fcmToken'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SbProfileModelImplToJson(
        _$SbProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'profileImageUrl': instance.profileImageUrl,
      'accessToken': instance.accessToken,
      'idToken': instance.idToken,
      'fcmToken': instance.fcmToken,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
