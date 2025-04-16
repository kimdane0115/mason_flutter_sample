import 'package:google_sign_in/google_sign_in.dart';

import '../../index.dart';

class SocialService {
  static final SocialService _instance = SocialService._internal();

  factory SocialService() {
    return _instance;
  }

  SocialService._internal() {
    // do something
  }
  Future<void> signInWithKakao() async {
    await Supabase.instance.client.auth.signInWithOAuth(
        OAuthProvider.kakao,
        redirectTo: "fluttersample.co.kr://oauth",
        authScreenLaunchMode: LaunchMode.externalApplication,
      );
  }

  Future<bool> signInWithGoogle() async {
    try {
      if (await GoogleSignIn().isSignedIn()) {
        await GoogleSignIn().signOut();
      }
      
      GoogleSignInAccount? cachedGoogleUser = await GoogleSignIn(
        scopes: ["profile", "email"],
        clientId: F.iosClientId,
        serverClientId: F.webServerClientId,
      ).signIn();

      final GoogleSignInAuthentication? googleAuth = await cachedGoogleUser?.authentication;

      // String email = cachedGoogleUser?.email ?? '';
      String idToken = googleAuth?.idToken ?? '';
      // String accessToken = googleAuth?.accessToken ?? '';

      if (idToken.isEmpty) {
        return false;
      }

      print('>>> token : ${googleAuth?.idToken}');
      await Supabase.instance.client.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: googleAuth?.idToken ?? '',
        accessToken: googleAuth?.accessToken,
      );

      return true;

    } catch (e) {
      return false;
    }
  }

  Future<void> signInWithApple() async {
    

    /// apple 은 별도 signOut이 없음
  }
}
