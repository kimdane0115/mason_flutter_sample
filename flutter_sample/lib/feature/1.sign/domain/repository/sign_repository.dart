abstract class SignRepository {
  Future<void> userVerify(String email, String idToken, String accessToken);
}