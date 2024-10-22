// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirebaseDataResponse<T> _$FirebaseDataResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    FirebaseDataResponse<T>(
      name: json['name'] as String,
      fields: _$nullableGenericFromJson(json['fields'], fromJsonT),
      createTime: json['createTime'] as String,
      updateTime: json['updateTime'] as String,
    );

Map<String, dynamic> _$FirebaseDataResponseToJson<T>(
  FirebaseDataResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'name': instance.name,
      'fields': _$nullableGenericToJson(instance.fields, toJsonT),
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
