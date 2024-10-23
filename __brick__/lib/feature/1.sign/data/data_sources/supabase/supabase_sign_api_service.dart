import 'package:supabase_flutter/supabase_flutter.dart';

abstract class SupabaseSignApiService {
  Future<void> userVerify(String email, String idToken, String accessToken);
}

class SupabaseSignApiServiceImpl implements SupabaseSignApiService {
  @override
  Future<void> userVerify(String email, String idToken, String accessToken) async {
    final client = Supabase.instance.client;
    final response = await client.from('profiles').select('*').eq('email', email);

    print('>>>>>>>>> response : $response');
  }
}