import '../entities/profile.dart';

abstract class SignRepository {
  Future<Profile> userVerify(String email, String idToken, String accessToken);
  Future<Profile> addProfile(Map<String, dynamic> request);
  Future<void> deleteProfile(String uuid);
  Future<Profile> getProfile(String uuid);
}