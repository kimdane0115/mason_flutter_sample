

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/profile.dart';

part 'sign_up_screen_provider_notifier.g.dart';

@riverpod
class SignUpScreenProviderNotifier extends _$SignUpScreenProviderNotifier {
  @override
  Profile build() {
    return Profile(
      email: '',
      name: '',
      profileImageUrl: '',
      fcmToken: '',
    );
  }

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setProfileImageUrl(String profileImageUrl) {
    state = state.copyWith(profileImageUrl: profileImageUrl);
  }

  void setFcmToken(String fcmToken) {
    state = state.copyWith(fcmToken: fcmToken);
  }

  void setAccessToken(String accessToken) {
    state = state.copyWith(accessToken: accessToken);
  }

  void setIdToken(String idToken) {
    state = state.copyWith(idToken: idToken);
  }
}
