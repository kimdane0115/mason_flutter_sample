
import '../../../../index.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  @override
  Widget build(BuildContext context) {

    ref.listen(signAsyncNotifierProvider, (previous, next) {
      if (next.hasError) {
        print(next.error);
      }
      if (next.hasValue && next.value != null) {
        final authState = ref.read(authStreamProvider);
        ref.read(localRepositoryProvider).setUUID(authState.value!.session!.user.id);
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('회원가입'),
              content: const Text('회원가입이 완료되었습니다.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    const HomeScreenRoute().go(context);
                  },
                  child: const Text('확인'),
                ),
              ],
            );
          },
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title:  const Text(
          '회원가입',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: body(),
        ),
      ),
    );
  }

  Widget body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // 프로필 이미지 선택 로직 구현
                  },
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[300],
                    child: const Icon(Icons.camera_alt, size: 40, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: '닉네임',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: '이름',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: ElevatedButton(
            onPressed: () async {
              // ref.read(supaBaseAuthAsyncNotifierProvider.notifier).signUpWithGoogle();
              final authState = ref.read(authStreamProvider);
              final request = {
                'uuid': authState.value?.session?.user.id,
                'email': authState.value?.session?.user.userMetadata!['email'],
                'name': authState.value?.session?.user.userMetadata!['name'],
                'fcmToken': '',
                'profileImageUrl': '',
                'idToken': authState.value?.session?.providerToken,
                'accessToken': authState.value?.session?.accessToken,
                'status': 'active',
                'socialType': authState.value?.session?.user.appMetadata['provider'],
              };
              ref.read(signAsyncNotifierProvider.notifier).addProfile(request);
            },
            child: const Text('회원가입 완료'),
          ),
        ),
      ],
    );
  }
}