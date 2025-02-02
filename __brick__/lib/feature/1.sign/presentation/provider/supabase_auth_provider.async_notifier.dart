// import 'package:firebase_auth/firebase_auth.dart';
import 'package:crypto/crypto.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
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
        'socialType': SocialType.google.name,
        // 'createdAt': DateTime.now().toIso8601String(),
      };
      
      ref.read(signAsyncNotifierProvider.notifier).addProfile(request);

      return null;
    });
  }

  Future<void> signInWithKakao() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await Supabase.instance.client.auth.signInWithOAuth(
        OAuthProvider.kakao,
        redirectTo: "fluttersample.co.kr://oauth",
        authScreenLaunchMode: LaunchMode.externalApplication,
      );

      Supabase.instance.client.auth.onAuthStateChange.listen((data) {
        final AuthChangeEvent event = data.event;
        if (event == AuthChangeEvent.signedIn) {
          // final request = {
          //   'uuid': data.session?.user.id,
          //   'email': data.session?.user.userMetadata!['email'],
          //   'name': data.session?.user.userMetadata!['name'],
          //   'fcmToken': '',
          //   'profileImageUrl': '',
          //   'idToken': data.session?.providerToken,
          //   'accessToken': data.session?.accessToken,
          //   'status': 'active',
          //   'socialType': SocialType.kakao.name,
          // };
          // print('>>> data : ${data.session}');
          // ref.read(signAsyncNotifierProvider.notifier).addProfile(request);
        }
      });
      return null;
    });
  }

  Future<void> signInWithApple() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final rawNonce = Supabase.instance.client.auth.generateRawNonce();
      final hashedNonce = sha256.convert(utf8.encode(rawNonce)).toString();

      try {
        final credential = await SignInWithApple.getAppleIDCredential(
          scopes: [
            AppleIDAuthorizationScopes.email,
            AppleIDAuthorizationScopes.fullName,
          ],
          nonce: hashedNonce,
        );

        final idToken = credential.identityToken;
        if (idToken == null) {
          return null;
          // throw const AuthException(
          //     'Could not find ID Token from generated credential.');
        }
        
        await Supabase.instance.client.auth.signInWithIdToken(
          provider: OAuthProvider.apple,
          idToken: idToken,
          nonce: rawNonce,
        );
        // 성공적으로 인증된 경우 처리
      } catch (error) {
        if (error is SignInWithAppleAuthorizationException) {
          if (error.code == AuthorizationErrorCode.canceled) {
            // 사용자가 인증을 취소한 경우
            // Navigator.pop(context); // 이전 화면으로 이동
            return null;
          } else {
            // 다른 오류 처리
            print("Authorization error: ${error.code}");
          }
        } else {
          // 예상하지 못한 에러 처리
          print("Unknown error: $error");
        }
      }
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