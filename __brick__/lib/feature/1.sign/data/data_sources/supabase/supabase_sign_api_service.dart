import 'package:supabase_flutter/supabase_flutter.dart';

abstract class SupabaseSignApiService {
  Future<void> userVerify(String email);
}

class SupabaseSignApiServiceImpl implements SupabaseSignApiService {
  @override
  Future<void> userVerify(String email) async {
    // TODO: implement userVerify
    final client = Supabase.instance.client;
    final response = await client.from('profiles').select('*').eq('email', email);

    print('>>>>>>>>> response : $response');

    // throw UnimplementedError();
  }

}