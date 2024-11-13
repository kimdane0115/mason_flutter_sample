import 'package:freezed_annotation/freezed_annotation.dart';

part 'sb_member_model.freezed.dart';
part 'sb_member_model.g.dart';

@freezed
class SbMemberModel with _$SbMemberModel {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  factory SbMemberModel({
    required int id,
    required String name,
    required String fcm_token,
    required String profile_image_url,
    required DateTime created_at,
    // required String createTime,
    // required String updateTime,
  }) = _SbMemberModel;

  factory SbMemberModel.fromJson(Map<String, dynamic> json) => _$SbMemberModelFromJson(json);
}