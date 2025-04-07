import 'package:freezed_annotation/freezed_annotation.dart';

part 'sb_profile_model.freezed.dart';
part 'sb_profile_model.g.dart';

@freezed
abstract class SbProfileModel with _$SbProfileModel {
  // @JsonSerializable(includeIfNull: false, explicitToJson: true)
  factory SbProfileModel({
    required int id,
    required String email,
    required String name,
    required String profileImageUrl,
    required String accessToken,
    required String idToken,
    required String fcmToken,
    required String status,
    required DateTime createdAt,
  }) = _SbProfileModel;

  factory SbProfileModel.fromJson(Map<String, dynamic> json) => _$SbProfileModelFromJson(json);
}