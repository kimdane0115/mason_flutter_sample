
import '../../domain/entities/profile.dart';
import '../../domain/repository/sign_repository.dart';
import '../data_sources/supabase/supabase_sign_api_service.dart';

class SignRepositoryImpl extends SignRepository {
  final SupabaseSignApiService _supabaseSignApiService;

  SignRepositoryImpl(this._supabaseSignApiService);
  
  @override
  Future<Profile> userVerify(String email, String idToken, String accessToken) async {
    try {
      final res = await _supabaseSignApiService.userVerify(email, idToken, accessToken);
      // print('>>>> $res');
      if (res != null) {
        return Profile(
          id: res.id,
          email: res.email,
          name: res.name,
          profileImageUrl: res.profileImageUrl,
          fcmToken: res.fcmToken,
          accessToken: res.accessToken,
          idToken: res.idToken,
          createdAt: res.createdAt,
        );
      } else {
        return Profile(
          id: 0,
          email: '',
          name: '',
          profileImageUrl: '',
          fcmToken: '',
          accessToken: '',
          idToken: '',
          createdAt: DateTime.now(),
        );
      }
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
