import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  final int? id;
  final String email;
  final String name;
  final String profileImageUrl;
  final String fcmToken;
  final String? accessToken;
  final String? idToken;
  final DateTime? createdAt;
  Profile({
    this.id,
    required this.email,
    required this.name,
    required this.profileImageUrl,
    required this.fcmToken,
    this.accessToken,
    this.idToken,
    this.createdAt,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
