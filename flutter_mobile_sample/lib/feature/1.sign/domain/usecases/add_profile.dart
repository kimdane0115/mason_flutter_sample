import '../../sign.dart';

class AddProfile {
  final SignRepository repository;

  AddProfile(this.repository);

  Future<void> call(Map<String, dynamic> request) {
    // return repository.patchMemberIdCommon(teamId, memberId, request);
    return repository.addProfile(request);
  }  
}