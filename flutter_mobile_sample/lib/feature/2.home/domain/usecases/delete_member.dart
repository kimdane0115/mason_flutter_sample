import '../repository/home_repository.dart';

class DeleteMember {
  final HomeRepository repository;

  DeleteMember(this.repository);

  Future<void> call(int id) {
    return repository.deleteMemeber(id);
  }  
}