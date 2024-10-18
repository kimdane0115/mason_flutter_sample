

import '../../data/models/models.dart';

abstract class HomeRepository {
  Future<void> getTeam(String teamId);
  // Future<List<Member>> getMember(String teamId);
  Future<void> getMember(String teamId);
  Future<void> addMemeber(Map<String, dynamic> request);
  Future<void> updateMemeber(Map<String, dynamic> request, int id);
  Future<void> deleteMemeber(int id);

  Future<void> patchMemberRecordYear(String teamId, String memberId, String year, CommonRequest<RecordModel> request);
  Future<void> getUserData(String userId);
  Future<void> signInByEmail(String request);
}