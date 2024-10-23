import 'package:supabase_flutter/supabase_flutter.dart';

import '../../models/supabase/sb_profile_model.dart';

abstract class SupabaseSignApiService {
  Future<SbProfileModel?> userVerify(String email, String idToken, String accessToken);
}

class SupabaseSignApiServiceImpl implements SupabaseSignApiService {
  @override
  Future<SbProfileModel?> userVerify(String email, String idToken, String accessToken) async {

    try {
      final client = Supabase.instance.client;
      final count = await client.from('profiles').select('*').eq('email', email).count().then(
        (value) => value.count
      );

      if (count != 0) {
        final response = await client
          .from('profiles')
          .update({
            'idToken': idToken,
            'accessToken': accessToken,
            'updatedAt': DateTime.now().toIso8601String()
          })
          .eq('email', email)
          .select()
          .single();
          return SbProfileModel.fromJson(response);
      } else {
        return null;
      }
      // List<SbProfileModel> result = response.map((map) => SbProfileModel.fromJson(map)).toList();
      // print('>>>>>>>>> response : $response');
      // return SbProfileModel.fromJson(response.first);
    } catch (e) {
      rethrow; 
    }
  }
}