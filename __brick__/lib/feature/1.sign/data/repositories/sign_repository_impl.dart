
import '../../domain/entities/profile.dart';
import '../../domain/repositories/sign_repository.dart';
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
  
  @override
  Future<void> addProfile(Map<String, dynamic> request) async {
    final res = _supabaseSignApiService.addProfile(request);
  }
  
  @override
  Future<void> deleteProfile(String uuid) async {
    final res = await _supabaseSignApiService.deleteProfile(uuid);
  }
  
  @override
  Future<Profile> getProfile(String uuid) async {
    final res = await _supabaseSignApiService.getProfile(uuid);
    return Profile(
      id: res?.id ?? 0,
      email: res?.email ?? '',
      name: res?.name ?? '',
      profileImageUrl: res?.profileImageUrl ?? '',
      fcmToken: res?.fcmToken ?? '',
      accessToken: res?.accessToken ?? '',
      idToken: res?.idToken ?? '',
      status: res?.status ?? '',
      createdAt: res?.createdAt ?? DateTime.now(),
    );
  }
}
