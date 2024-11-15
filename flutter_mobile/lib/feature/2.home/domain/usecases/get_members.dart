import '../repository/home_repository.dart';

class GetMembers {
  final HomeRepository repository;

  GetMembers(this.repository);

  // Future<List<Member>> call(String teamId) {
  Future<void> call(String teamId) {
    return repository.getMember(teamId);
  }
}