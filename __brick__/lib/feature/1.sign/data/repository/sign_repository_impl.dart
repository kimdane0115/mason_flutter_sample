
import '../../domain/repository/sign_repository.dart';
import '../data_sources/supabase/supabase_sign_api_service.dart';

class SignRepositoryImpl extends SignRepository {
  final SupabaseSignApiService _supabaseSignApiService;

  SignRepositoryImpl(this._supabaseSignApiService);
  
  @override
  Future<void> userVerify(String email, String idToken, String accessToken) async {
    _supabaseSignApiService.userVerify(email, idToken, accessToken);
  }
}
