import 'package:freezed_annotation/freezed_annotation.dart';

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

  Profile copyWith({
    int? id,
    String? email,
    String? name,
    String? profileImageUrl,
    String? fcmToken,
    String? accessToken,
    String? idToken,
    DateTime? createdAt,
  }) {
    return Profile(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      profileImageUrl: profileImageUrl ?? this.profileImageUrl,
      fcmToken: fcmToken ?? this.fcmToken,
      accessToken: accessToken ?? this.accessToken,
      idToken: idToken ?? this.idToken,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
