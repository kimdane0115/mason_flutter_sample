import '../repository/home_repository.dart';

class AddMember {
  final HomeRepository repository;

  AddMember(this.repository);

  Future<void> call(Map<String, dynamic> request) {
    // return repository.patchMemberIdCommon(teamId, memberId, request);
    return repository.addMemeber(request);
  }  
}