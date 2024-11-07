import 'package:supabase_flutter/supabase_flutter.dart';

import '../../models/supabase/sb_profile_model.dart';

abstract class SupabaseSignApiService {
  Future<SbProfileModel?> userVerify(String email, String idToken, String accessToken);
  Future<void> addProfile(Map<String, dynamic> request);
  Future<void> deleteProfile(String uuid);
  Future<SbProfileModel?> getProfile(String userId);
}

class SupabaseSignApiServiceImpl implements SupabaseSignApiService {
  @override
  Future<SbProfileModel?> userVerify(String email, String idToken, String accessToken) async {
    print('>>>>> accessToken : $accessToken');
    try {
      final client = Supabase.instance.client;
      final count = await client.from('profiles').select('*').eq('email', email).count().then(
        (value) => value.count
      );

      if (count != 0) {
        final response = await client.from('profiles').update({
          'idToken': idToken,
          'accessToken': accessToken,
        }).eq('email', email).select();

        for (var item in response) {
          if (item['status'] == 'active') {
            return SbProfileModel.fromJson(item);
          }
        }
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }
  
  @override
  Future<void> addProfile(Map<String, dynamic> request) async {

    try {
      final client = Supabase.instance.client;
      final response = await client.from('profiles').insert([request]).select();
      print('>>>> response : $response');
    } catch (e) {
      rethrow;
    }
  }
  
  @override
  Future<void> deleteProfile(String uuid) async {
    try {
      final client = Supabase.instance.client;
      // final response = await client.from('profiles').delete().eq('uuid', uuid);
      await client.from('profiles').update({
        'status': 'drop'
      }).eq('uuid', uuid);
      // print('>>>> response : $response');
    } catch (e) {
      rethrow;
    }
  }
  
  @override
  Future<SbProfileModel?> getProfile(String uuid) async {
    try {
      final client = Supabase.instance.client;
      final response = await client.from('profiles').select().eq('uuid', uuid).single();
      return SbProfileModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}