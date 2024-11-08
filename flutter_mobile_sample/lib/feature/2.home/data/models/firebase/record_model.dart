import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_model.freezed.dart';
part 'record_model.g.dart';

@freezed
class RecordModel with _$RecordModel {
  @JsonSerializable(includeIfNull: false)
  factory RecordModel({
    required Map<String, dynamic> game,
    required Map<String, dynamic> goal,
    required Map<String, dynamic> assist,
    required Map<String, dynamic> mom,
    // required String createTime,
    // required String updateTime,
  }) = _RecordModel;

  factory RecordModel.fromJson(Map<String, dynamic> json) => _$RecordModelFromJson(json);
}