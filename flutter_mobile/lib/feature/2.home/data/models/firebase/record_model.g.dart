// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordModel _$RecordModelFromJson(Map<String, dynamic> json) => _RecordModel(
      game: json['game'] as Map<String, dynamic>,
      goal: json['goal'] as Map<String, dynamic>,
      assist: json['assist'] as Map<String, dynamic>,
      mom: json['mom'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$RecordModelToJson(_RecordModel instance) =>
    <String, dynamic>{
      'game': instance.game,
      'goal': instance.goal,
      'assist': instance.assist,
      'mom': instance.mom,
    };
