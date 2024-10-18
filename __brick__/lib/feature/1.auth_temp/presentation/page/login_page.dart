

import 'dart:async';

import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/constants/index.dart';
import '../provider/supabase_auth_provider.async_notifier.dart';
import '../widget/show_loadingIndicator.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                _googleSignIn(context, ref);
              },
              child: const Text('GOGGLE 로그인'),
            ),
            const SizedBox(height: 8,),
            ElevatedButton(
              onPressed: () {
                _kakaoSignIn(context, ref);
              },
              child: const Text('카카오 로그인'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     // googlelogin();
            //     _googleSignIn(context, ref);
            //   },
            //   child: const Text('Login Button'),
            // ),
          ],
        ),
      ),
    );
  }

  Future<void> _googleSignIn(BuildContext context, WidgetRef ref) async {
    // final loading = await showLoadingIndicator(context);
    await showLoadingIndicator(context);
    ref.watch(supaBaseAuthAsyncNotifierProvider.notifier).signInWithGoogle();
    
    // try {
    //   if (await GoogleSignIn().isSignedIn()) {
    //     await GoogleSignIn().signOut();
    //   }

    //   selectedSns = DingdonguAuthType.google;
    //   final googleToken = await SocialService().signInWithGoogle();
    //   if (mounted) {
    //     context.pop(loading);
    //   }

    //   logger.d('googleToken : $googleToken');
    //   if (googleToken == null) return; // 선택 안하고 취소했을 경우

    //   DingdonguDeviceType deviceType = getDeviceType();

    //   DingdonguApiVerifySnsRequest request = DingdonguApiVerifySnsRequest(
    //     snsType: DingdonguSnsType.google,
    //     deviceType: deviceType,
    //     idToken: googleToken,
    //   );

    //   ref.read(snsVerificationAsyncNotifierProvider.notifier).snsVerify(request);
    // } catch (e) {
    //   if (mounted) {
    //     context.pop(loading);
    //   }
    // }
  }

  Future<void> _kakaoSignIn(BuildContext context, WidgetRef ref) async {
      // var hash = await KakaoSdk.origin;
      // if (hash.isNotEmpty) {
      //   print('>>>> has key is exist');
      // } else {
      //   print('>>>> has key is not exist');
      // }

    await Supabase.instance.client.auth.signInWithOAuth(
      OAuthProvider.kakao,
      redirectTo: "fluttertemplate.co.kr://oauth",
      // redirectTo: "io.supabase.flutterquickstart://login-callback",
      // redirectTo: "flutter_template.co.kr://login-callback",
      // redirectTo: "com.example.flutter_template.dev://oauth",
      // redirectTo: 'myteam.co.kr://login-callback',
      // authScreenLaunchMode: LaunchMode.externalApplication,
      // authScreenLaunchMode: LaunchMode.platformDefault,
    );

      Supabase.instance.client.auth.onAuthStateChange.listen((data) { 
        print('>>> ${data.event}');
      });

        // await  Supabase.instance.client.auth.signInWithOAuth(OAuthProvider.kakao);

        //           // Listen to auth state changes in order to detect when ther OAuth login is complete.
        //            Supabase.instance.client.auth.onAuthStateChange.listen((data) {
        //             final AuthChangeEvent event = data.event;
        //             if (event == AuthChangeEvent.signedIn) {
        //               debugPrint('데이터 : $data');
        //               debugPrint('세션 : ${data.session}');
        //               final snackBarText = SnackBar(
        //                   content: Text(
        //                       '${data.session?.user.userMetadata!['email']}님 반갑습니다'));
        //               ScaffoldMessenger.of(context).showSnackBar(snackBarText);
        //             }
        //           });

  }
}