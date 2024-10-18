
import '../../domain/repository/sign_repository.dart';
import '../data_sources/supabase/supabase_sign_api_service.dart';

class SignRepositoryImpl extends SignRepository {
  final SupabaseSignApiService _supabaseSignApiService;

  SignRepositoryImpl(this._supabaseSignApiService);
  
  @override
  Future<void> userVerify(String email) async {
    // TODO: implement snsVerify
    await _supabaseSignApiService.userVerify(email);
    // throw UnimplementedError();
  }
  
}
