import '../entities/profile.dart';
import '../repository/sign_repository.dart';

class UserVerify {
  final SignRepository repository;

  UserVerify(this.repository);

  Future<Profile> call(String email, String idToken, String accessToken) {
    return repository.userVerify(email, idToken, accessToken);
  }
}