// import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../index.dart';

part 'supabase_auth_provider.async_notifier.g.dart';

final authStreamProvider = StreamProvider<AuthState>((ref) {
  return Supabase.instance.client.auth.onAuthStateChange;
});

@Riverpod(keepAlive: true)
class SupaBaseAuthAsyncNotifier extends _$SupaBaseAuthAsyncNotifier {
  
  GoogleSignInAccount? _cachedGoogleUser;

  GoogleSignInAccount? get cachedGoogleUser => _cachedGoogleUser;

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

      _cachedGoogleUser = await GoogleSignIn(
        scopes: ["profile", "email"],
        clientId: F.iosClientId,
        serverClientId: F.webServerClientId,
      ).signIn();

      final GoogleSignInAuthentication? googleAuth = await _cachedGoogleUser?.authentication;

      String email = _cachedGoogleUser?.email ?? '';
      String idToken = googleAuth?.idToken ?? '';
      String accessToken = googleAuth?.accessToken ?? '';

      if (idToken.isEmpty) {
        return false;
      }

      print('>>> token : ${googleAuth?.idToken}');

      await ref.read(signAsyncNotifierProvider.notifier).userVerify(
          email, idToken, accessToken);

      return true;
    });
  }

  FutureOr<void> signUpWithGoogle() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {

      final GoogleSignInAuthentication? googleAuth = await _cachedGoogleUser?.authentication;

      String name = _cachedGoogleUser?.displayName ?? '';
      String email = _cachedGoogleUser?.email ?? '';
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
        'status': 'active',
        // 'createdAt': DateTime.now().toIso8601String(),
      };
      
      ref.read(signAsyncNotifierProvider.notifier).addProfile(request);

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
  
  Future<void> deleteUser(String userId) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await Supabase.instance.client.rpc('delete_user', params: {'user_id': userId});
      await GoogleSignIn().signOut();
      await Supabase.instance.client.auth.signOut();
      return null;
    });
  }
}