// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberModelImpl _$$MemberModelImplFromJson(Map<String, dynamic> json) =>
    _$MemberModelImpl(
      memberName: json['memberName'] as Map<String, dynamic>,
      memberNumber: Map<String, String>.from(json['memberNumber'] as Map),
      memberId: json['memberId'] as Map<String, dynamic>,
      phone: json['phone'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$MemberModelImplToJson(_$MemberModelImpl instance) =>
    <String, dynamic>{
      'memberName': instance.memberName,
      'memberNumber': instance.memberNumber,
      'memberId': instance.memberId,
      'phone': instance.phone,
    };
