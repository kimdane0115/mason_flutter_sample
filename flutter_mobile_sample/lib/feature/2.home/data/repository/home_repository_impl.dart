
import '../../domain/repository/home_repository.dart';
import '../data_sources/supabase/supabase_home_api_service.dart';
import '../models/models.dart';

class HomeRepositoryImpl implements HomeRepository {
  final SupabaseApiService _supabaseApiService;

  HomeRepositoryImpl(this._supabaseApiService);

  @override
  // Future<List<Member>> getMember(String teamId) {
  Future<void> getMember(String teamId) async {
    // TODO: implement getMember
    var res = _supabaseApiService.getMember('teamId');
  }

  @override
  Future<void> getTeam(String teamId) {
    // TODO: implement getTeam
    throw UnimplementedError();
  }

  @override
  Future<void> getUserData(String userId) {
    // TODO: implement getUserData
    throw UnimplementedError();
  }

  @override
  Future<void> patchMemberRecordYear(String teamId, String memberId, String year, CommonRequest<RecordModel> request) {
    // TODO: implement patchMemberRecordYear
    throw UnimplementedError();
  }

  @override
  Future<void> signInByEmail(String request) {
    // TODO: implement signInByEmail
    throw UnimplementedError();
  }
  
  @override
  Future<void> addMemeber(Map<String, dynamic> request) async {
    // TODO: implement addMemeber
    // throw UnimplementedError();
    var res = _supabaseApiService.addMember(request);
  }
  
  @override
  Future<void> deleteMemeber(int id) async {
    // TODO: implement deleteMemeber
    var res = await _supabaseApiService.deleteMemeber(id);
    // throw UnimplementedError();
  }
  
  @override
  Future<void> updateMemeber(Map<String, dynamic> request, int id) async {
    // TODO: implement updateMemeber
    var res = await _supabaseApiService.updateMember(request, id);
    // throw UnimplementedError();
  }
  
}