// import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'sign_async_notifier.dart';

// import 'sign_async_notifier.dart';
part 'supabase_auth_provider.async_notifier.g.dart';

final authStreamProvider = StreamProvider<AuthState>((ref) {
  return Supabase.instance.client.auth.onAuthStateChange;
});

@Riverpod(keepAlive: true)
class SupaBaseAuthAsyncNotifier extends _$SupaBaseAuthAsyncNotifier {
  @override
  FutureOr<bool?> build() async {
    return null;
  }

  FutureOr<void> signInWithGoogle() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {

      if (await GoogleSignIn().isSignedIn()) {
        await GoogleSignIn().signOut();
      }

      final GoogleSignInAccount? googleUser = await GoogleSignIn(
        scopes: ["profile", "email"],
        clientId: '179101698842-s9k7mn7rjoteh3saqhiu2an5jilg3om5.apps.googleusercontent.com',
        serverClientId: '179101698842-96paod6qq0lddjqmq5a8jt7ig8iuada7.apps.googleusercontent.com',
      ).signIn();

      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      String email = googleUser?.email ?? '';
      String idToken = googleAuth?.idToken ?? '';
      String accessToken = googleAuth?.accessToken ?? '';

      if (idToken.isEmpty) {
        return false;
      }

      print('>>> token : ${googleAuth?.idToken}');

      // ref.read(snsVerificationAsyncNotifierProvider.notifier).snsVerify(request);
      await ref.read(signAsyncNotifierProvider.notifier).userVerify(
          email, idToken, accessToken);

      // await Supabase.instance.client.auth.signInWithIdToken(
      //   provider: OAuthProvider.google,
      //   idToken: idToken,
      //   accessToken: accessToken,
      // );

      return true;
    });
  }

  FutureOr<void> signUpWithGoogle() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      
      final GoogleSignInAccount? googleUser = await GoogleSignIn(
        scopes: ["profile", "email"],
        clientId: '179101698842-s9k7mn7rjoteh3saqhiu2an5jilg3om5.apps.googleusercontent.com',
        serverClientId: '179101698842-96paod6qq0lddjqmq5a8jt7ig8iuada7.apps.googleusercontent.com',
      ).signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      String name = googleUser?.displayName ?? '';
      String email = googleUser?.email ?? '';
      String idToken = googleAuth?.idToken ?? '';
      String accessToken = googleAuth?.accessToken ?? '';
      
      final res = await Supabase.instance.client.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: googleAuth?.idToken ?? '',
        accessToken: googleAuth?.accessToken,
      );

      final request = {
        'uuid': res.user?.id,
        'email': email,
        'name': name,
        'fcmToken': '',
        'profileImageUrl': '',
        'idToken': idToken,
        'accessToken': accessToken,
        // 'createdAt': DateTime.now().toIso8601String(),
      };
      
      ref.read(signAsyncNotifierProvider.notifier).addProfie(request);

      return null;
    });
  }

  Future<void> signOut() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      // if (ref.read(meAsyncNotifierProvider).value!.data!.socialType == SocialType.google) {
      //   await GoogleSignIn().signOut();
      // }
      // FirebaseService().unsubscribe();
      await GoogleSignIn().signOut();
      await Supabase.instance.client.auth.signOut();

      return null;
    });
  }
}