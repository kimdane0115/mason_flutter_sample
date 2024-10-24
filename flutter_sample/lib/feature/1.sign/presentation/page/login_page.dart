import 'dart:async';

import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

import '../../../../index.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  late BuildContext loading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: body()),
    );
  }

  Widget body() {
    // final verificationState = ref.watch(signAsyncNotifierProvider);
    final test = ref.watch(supaBaseAuthAsyncNotifierProvider);
    ref.listen(
      signAsyncNotifierProvider,
      (prev, next) {
        next.whenOrNull(
          data: (value) async {
            if (value == null) return;

            if (value.accessToken!.isEmpty) {
              print('signup screen page move!!!');
              // const SignUpAgreementScreenRoute().push(context).then((value) {
              //   if (value == true) {
              //     _signUp();
              //   }
              // });
            } else {
              await Supabase.instance.client.auth.signInWithIdToken(
                provider: OAuthProvider.google,
                idToken: value.idToken ?? '',
                accessToken: value.accessToken,
              );
            }

            if (mounted) {
              context.pop(loading);
            }

            print('>>>>>> value : $value');
          },
          error: (error, stackTrace) {
            if (context.mounted) {
              context.pop(loading);
            }
          },
        );
      },
    );

    return SafeArea(
      child: test.maybeWhen(
        data: (data) {

          // if (data == true) {
          //   return const SizedBox.shrink();
          // }

          if (data == false) {
            context.pop(loading);
          }

          return Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _googleSignIn();
                    // const SignUpAgreementScreenRoute().push(context);
                  },
                  child: const Text('GOGGLE 로그인'),
                ),
                const SizedBox(height: 8,),
                ElevatedButton(
                  onPressed: () {
                    _kakaoSignIn();
                  },
                  child: const Text('카카오 로그인'),
                ),
                const SizedBox(height: 8,),
                ElevatedButton(
                  onPressed: () {
                    const SignUpScreenRoute().push(context);
                  },
                  child: const Text('회원가입'),
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
          );
        },
        orElse:() {
          return const SizedBox.shrink();
        },
      ),
    );
  }

  Future<void> _googleSignIn() async {
    loading = await showLoadingIndicator(context);
    ref.read(supaBaseAuthAsyncNotifierProvider.notifier).signInWithGoogle();
  }

  Future<void> _kakaoSignIn() async {
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
      // redirectTo: "com.example.flutter_sample.dev://oauth",
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