// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sb_member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SbMemberModelImpl _$$SbMemberModelImplFromJson(Map<String, dynamic> json) =>
    _$SbMemberModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      fcm_token: json['fcm_token'] as String,
      profile_image_url: json['profile_image_url'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$SbMemberModelImplToJson(_$SbMemberModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fcm_token': instance.fcm_token,
      'profile_image_url': instance.profile_image_url,
      'created_at': instance.created_at.toIso8601String(),
    };
