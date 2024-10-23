import '../entities/profile.dart';

abstract class SignRepository {
  Future<Profile> userVerify(String email, String idToken, String accessToken);
}