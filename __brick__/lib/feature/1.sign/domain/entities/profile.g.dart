// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String,
      name: json['name'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
      fcmToken: json['fcmToken'] as String,
      accessToken: json['accessToken'] as String?,
      idToken: json['idToken'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'profileImageUrl': instance.profileImageUrl,
      'fcmToken': instance.fcmToken,
      'accessToken': instance.accessToken,
      'idToken': instance.idToken,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
