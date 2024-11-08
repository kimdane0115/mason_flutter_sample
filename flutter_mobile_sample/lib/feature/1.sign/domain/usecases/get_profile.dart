import '../../sign.dart';

class GetProfile {
  final SignRepository repository;

  GetProfile(this.repository);

  Future<Profile> call(String uuid) async {
    return repository.getProfile(uuid);
  }
}