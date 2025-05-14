import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../index.dart';

part 'sign_async_notifier.g.dart';

@riverpod
class SignAsyncNotifier extends _$SignAsyncNotifier {
  @override
  FutureOr<Profile?> build() async {
    // return Supabase.instance.client.auth.currentUser?.id != null
    //     ? fetchProfile(Supabase.instance.client.auth.currentUser?.id ?? '')
    //     : null;
    return null;
  }

  FutureOr<void> fetchProfile(String uuid) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final getProfile = ref.read(getProfileProvider);
      return getProfile(uuid);
    });
    // return state.value;
  }

  Future<void> addProfile(Map<String, dynamic> request) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      try {
        final addProfile = ref.read(addProfileProvider);
        return await addProfile(request);
      } catch (e) {
        rethrow;
      }
    });
    // return state.value;
  }

  Future<void> userVerify(String email, String idToken, String accessToken) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final profile = ref.read(userVerifyProvider);
      return profile(email, idToken, accessToken);

    //   return fetchProfile(email, token);
    });
  }

  Future<void> deleteProfile(String uuid) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final deleteProfile = ref.read(deleteProfileProvider);
      deleteProfile(uuid);

      return;
    });
  }
}

