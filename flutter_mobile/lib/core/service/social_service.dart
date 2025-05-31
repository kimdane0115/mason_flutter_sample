import 'package:crypto/crypto.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart' as kakao;

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
    // await Supabase.instance.client.auth.signInWithOAuth(
    //     OAuthProvider.kakao,
    //     redirectTo: "mevoca.co.kr://oauth",
    //     authScreenLaunchMode: LaunchMode.externalApplication,
    //   );
    bool isInstalled = await kakao.isKakaoTalkInstalled();

    if (isInstalled) {
      try {
        kakao.OAuthToken token = await kakao.UserApi.instance.loginWithKakaoTalk();
        // kakao.OAuthToken token = await kakao.UserApi.instance.loginWithKakaoAccount();
        if (token.idToken != null) {
          // await Supabase.instance.client.auth.signInWithIdToken(
          //   provider: OAuthProvider.kakao,
          //   idToken: token.idToken!,
          //   accessToken: token.accessToken,
          // );
          print('>>>> token : $token');
        }
      } catch (error) {
        print(error);
        // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
        // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
        // if (error is PlatformException && error.code == 'CANCELED') {
        //   rethrow;
        // }
        // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
        // try {
        //   kakao.OAuthToken token = await kakao.UserApi.instance.loginWithKakaoAccount();
        //   // return token.accessToken;
        // } catch (error) {
        //   rethrow;
        // }
      }
    } else {
      // KakaoWebViewLoginRoute().push(context);
      kakao.OAuthToken token = await kakao.UserApi.instance.loginWithKakaoAccount(prompts: [kakao.Prompt.login]);
      final user = await kakao.UserApi.instance.me();
      
      final response = await http.post(
      Uri.parse('https://kauth.kakao.com/oauth/token'),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: {
        'grant_type': 'authorization_code',
        'client_id': 'ac90bf74d6cdc59992698071c916a73f',
        'redirect_uri': 'https://mevoca-auth.netlify.app',
        'code': user.id.toString(),
        'client_secret': 'kNtsN3Rk35MZTnR8JlsJrdscW3FKrFOn',
      },
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      print('>>>>>>>>>>>>> json : $json');
      await Supabase.instance.client.auth.signInWithIdToken(
        provider: OAuthProvider.kakao,
        idToken: json['id_token'],
        accessToken: json['access_token'],
      );
    }
    }
  }

  Future<void> loginWithKakaoAndSignInToSupabase() async {
    try {
      // 1. 카카오톡 앱 로그인 시도
      OAuthToken token;
      if (await isKakaoTalkInstalled()) {
        token = await UserApi.instance.loginWithKakaoTalk();
      } else {
        token = await UserApi.instance.loginWithKakaoAccount();
      }

      // final accessToken = token.accessToken;

      // final res = await http.post(
      //   Uri.parse('https://kauth.kakao.com/oauth/tokeninfo'),
      //   headers: {
      //     'Content-Type': 'application/x-www-form-urlencoded',
      //   },
      //   body: {
      //     'id_token': token.idToken!,
      //   },
      // );

      // if (res.statusCode != 200) {
      //   throw Exception('id_token 재요청 실패');
      // }

      // final jsonres = jsonDecode(res.body);
      // final aud = jsonres['aud'];

      // // final res = await http.get(Uri.parse('https://kauth.kakao.com/oauth/authorize'),
      // //   headers: {
      // //     'client_id': 'ac90bf74d6cdc59992698071c916a73f',
      // //     'redirect_uri': 'https://mevoca-auth.netlify.app',
      // //     'response_type': 'code',
      // //   },
      // // );

      // // print('>>>> res : $res');

      // // 2. /v1/user/access_token_info 로 사용자 ID 가져오기
      // final userInfoResponse = await http.get(
      //   Uri.parse('https://kapi.kakao.com/v1/user/access_token_info'),
      //   headers: {'Authorization': 'Bearer $accessToken'},
      // );

      // if (userInfoResponse.statusCode != 200) {
      //   throw Exception('카카오 사용자 정보 조회 실패');
      // }

      // final userInfo = jsonDecode(userInfoResponse.body);
      // final kakaoUserId = userInfo['id'];

      // // 3. REST API 방식으로 id_token 재발급 요청
      // final tokenResponse = await http.post(
      //   Uri.parse('https://kauth.kakao.com/oauth/token'),
      //   headers: {
      //     'Content-Type': 'application/x-www-form-urlencoded',
      //   },
      //   body: {
      //     'grant_type': 'authorization_code',
      //     'client_id': 'ac90bf74d6cdc59992698071c916a73f', // ← 반드시 REST API 키여야 함
      //     'redirect_uri': 'https://mevoca-auth.netlify.app', // Kakao Dev Console에 등록된 URI
      //     'code': aud, // 하지만 실제로 code는 안 씀 (그래서 이 방법은 편법이 됨)
      //     'refresh_token': token.refreshToken!, // 또는 access_token만으로는 id_token을 발급 못 받음
      //     'client_secret': 'kNtsN3Rk35MZTnR8JlsJrdscW3FKrFOn',
      //   },
      // );

      // if (tokenResponse.statusCode != 200) {
      //   throw Exception('id_token 재요청 실패');
      // }

      // final json = jsonDecode(tokenResponse.body);
      // final idToken = json['id_token'];
      // final accessTokenForSupabase = json['access_token'];

      // 4. Supabase 인증 처리
      await Supabase.instance.client.auth.signInWithIdToken(
        provider: OAuthProvider.kakao,
        // idToken: idToken,
        // accessToken: accessTokenForSupabase,
        idToken: token.idToken!,
        accessToken: token.accessToken,
      );

      print("✅ Supabase 로그인 성공");

    } catch (e) {
      print("❌ 로그인 실패: $e");
    }
  }

  Future<bool> signInWithGoogle() async {
    try {
      if (await GoogleSignIn().isSignedIn()) {
        await GoogleSignIn().signOut();
      }
      
      GoogleSignInAccount? cachedGoogleUser = await GoogleSignIn(
        // scopes: ["profile", "email"],
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
        return;
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
          return;
        } else {
          // 다른 오류 처리
          print("Authorization error: ${error.code}");
        }
      } else {
        // 예상하지 못한 에러 처리
        print("Unknown error: $error");
      }
    }
  }

  Future<void> signOut() async {
      if (Supabase.instance.client.auth.currentUser?.appMetadata['provider'] == 'google') {
        await GoogleSignIn().signOut();
      }
    
    await Supabase.instance.client.auth.signOut();
  }
}
