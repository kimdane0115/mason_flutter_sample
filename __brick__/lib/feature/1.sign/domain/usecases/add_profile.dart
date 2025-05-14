import '../../sign.dart';

class AddProfile {
  final SignRepository repository;

  AddProfile(this.repository);

  Future<Profile> call(Map<String, dynamic> request) async {
    // return repository.patchMemberIdCommon(teamId, memberId, request);
    try {
      return await repository.addProfile(request);
    } catch (e) {
      throw CustomProfileException(
        message: 'Failed to add profile',
        code: '500',
      );
    }
  }
}