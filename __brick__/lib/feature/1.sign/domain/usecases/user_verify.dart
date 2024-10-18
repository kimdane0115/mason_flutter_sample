import '../repository/sign_repository.dart';

class UserVerify {
  final SignRepository repository;

  UserVerify(this.repository);

  Future<void> call(String email) {
    return repository.userVerify(email);
  }
}