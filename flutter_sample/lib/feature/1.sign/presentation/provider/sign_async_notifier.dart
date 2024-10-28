import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../index.dart';

part 'sign_async_notifier.g.dart';

@riverpod
class SignAsyncNotifier extends _$SignAsyncNotifier {
  @override
  FutureOr<Profile?> build() async {
    return null;
  }

  // Future<Profile> fetchProfile(String email, String idToken) async {
  //   // final getMembers = ref.read(getMembersProvider);
  //   return ref.read(userVerifyProvider)(email, idToken);
  // }

  Future<void> addProfie(Map<String, dynamic> request) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final addProfile = ref.read(addProfileProvider);
      addProfile(request);

      return null;
    });
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

      return null;
    });
  }
}

