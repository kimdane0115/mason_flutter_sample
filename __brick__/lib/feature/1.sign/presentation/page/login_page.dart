import 'dart:async';

// import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

import '../../../../index.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  late BuildContext loading;

  @override
  void initState() {
    super.initState();
    Supabase.instance.client.auth.onAuthStateChange.listen((data) async {
      final AuthChangeEvent event = data.event;
      if (event == AuthChangeEvent.signedIn) {
        final res = await checkUser(Supabase.instance.client.auth.currentUser?.id.toString() ?? '');
        if (!res && mounted) {
          await showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('회원가입'),
                content: const Text('계정이 없습니다. 회원가입 하시겠습니까?'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // '취소' 선택
                    },
                    child: const Text('취소'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // '확인' 선택
                      _signUp();
                    },
                    child: const Text('확인'),
                  ),
                ],
              );
            },
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: body()),
    );
  }

  Widget body() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                _googleSignIn();
              },
              child: const Text('GOGGLE 로그인'),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                _kakaoSignIn();
              },
              child: const Text('카카오 로그인'),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                _appleLogIn();
              },
              child: const Text('애플 로그인'),
            ),
            const SizedBox(
              height: 8,
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     const SignUpScreenRoute().push(context);
            //   },
            //   child: const Text('회원가입'),
            // ),
          ],
        ),
      ),
    );
  }

  Future<void> _googleSignIn() async {
    loading = await showLoadingIndicator(context);
    // ref.read(supaBaseAuthAsyncNotifierProvider.notifier).signInWithGoogle();
    await SocialService().signInWithGoogle();
    if (mounted) {
      context.pop(loading);
    }
  }

  Future<void> _kakaoSignIn() async {
    loading = await showLoadingIndicator(context);
    await SocialService().signInWithKakao();
    if (mounted) {
      context.pop(loading);
    }
  }

  Future<void> _appleLogIn() async {
    await ref.read(supaBaseAuthAsyncNotifierProvider.notifier).signInWithApple();
  }

  Future<void> _signUp() async {
    // signup 페이지가 필요한 경우
    const SignUpScreenRoute().push(context);

    // signup 페이지가 필요 없는 경우
    // ref.read(supaBaseAuthAsyncNotifierProvider.notifier).signUpWithGoogle();
  }

  Future<bool> checkUser(String userId) async {
  try {
    final response = await Supabase.instance.client
        .rpc('check_user', params: {'user_id': userId});
    return response as bool;
  } catch (e) {
    throw Exception('사용자 확인 중 오류가 발생했습니다: $e');
  }
}
}
