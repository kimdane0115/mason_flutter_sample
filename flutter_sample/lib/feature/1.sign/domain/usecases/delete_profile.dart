import '../../sign.dart';

class DeleteProfile {
  final SignRepository repository;

  DeleteProfile(this.repository);

  Future<void> call(String uuid) {
    return repository.deleteProfile(uuid);
  }
}