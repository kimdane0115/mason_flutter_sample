import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_model.freezed.dart';
part 'member_model.g.dart';

@freezed
class MemberModel with _$MemberModel {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  factory MemberModel({
    required Map<String, dynamic> memberName,
    required Map<String, String> memberNumber,
    required Map<String, dynamic> memberId,
    required Map<String, dynamic> phone,
    // required String createTime,
    // required String updateTime,
  }) = _MemberModel;

  factory MemberModel.fromJson(Map<String, dynamic> json) => _$MemberModelFromJson(json);
}