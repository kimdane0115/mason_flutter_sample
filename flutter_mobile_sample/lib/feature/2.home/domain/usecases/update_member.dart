import '../repository/home_repository.dart';

class UpdateMember {
  final HomeRepository repository;

  UpdateMember(this.repository);

  Future<void> call(Map<String, dynamic> request, int id) {
    // return repository.patchMemberIdCommon(teamId, memberId, request);
    return repository.updateMemeber(request, id);
  }  
}