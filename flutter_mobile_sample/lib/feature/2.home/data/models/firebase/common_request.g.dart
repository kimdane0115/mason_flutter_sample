// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonRequest<T> _$CommonRequestFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    CommonRequest<T>(
      fields: _$nullableGenericFromJson(json['fields'], fromJsonT),
    );

Map<String, dynamic> _$CommonRequestToJson<T>(
  CommonRequest<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'fields': _$nullableGenericToJson(instance.fields, toJsonT),
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
