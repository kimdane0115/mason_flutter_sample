import '../../../../index.dart';

class MyInfoPage extends ConsumerStatefulWidget {
  const MyInfoPage({super.key});

  @override
  ConsumerState<MyInfoPage> createState() => _MyInfoPageState();
}

class _MyInfoPageState extends ConsumerState<MyInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('내 정보'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 20),
            
            // 프로필 섹션
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.person),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Supabase.instance.client.auth.currentUser?.email ?? '사용자',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '가입일: ${Supabase.instance.client.auth.currentUser?.createdAt.substring(0, 10) ?? '-'}',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
            const Divider(),

            // 메뉴 리스트
            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text('프로필 수정'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // TODO: 프로필 수정 페이지로 이동
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.notifications_outlined),
              title: const Text('알림 설정'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // TODO: 알림 설정 페이지로 이동
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('앱 정보'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // TODO: 앱 정보 페이지로 이동
              },
            ),
            const Divider(),
            
            // 로그아웃 버튼
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton(
                onPressed: () async {
                  ref.watch(supaBaseAuthAsyncNotifierProvider.notifier).signOut();
                  // if (mounted) {
                  //   const LoginPageRoute().go(context);
                  // }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[100],
                  foregroundColor: Colors.red,
                ),
                child: const Text('로그아웃'),
              ),
            ),

            // 회원탈퇴 버튼
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('회원탈퇴'),
                      content: const Text('정말 탈퇴하시겠습니까?\n모든 데이터가 삭제됩니다.'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('취소'),
                        ),
                        TextButton(
                          onPressed: () async {
                            ref.read(localRepositoryProvider).clearAllSharedPreferences();
                            ref
                                .read(signAsyncNotifierProvider.notifier)
                                .deleteProfile(Supabase.instance.client.auth.currentUser?.id ?? '');
                            // await ref.watch(supaBaseAuthAsyncNotifierProvider.notifier).signOut();
                            await ref
                                .watch(supaBaseAuthAsyncNotifierProvider.notifier)
                                .deleteUser(Supabase.instance.client.auth.currentUser?.id ?? '');
                            // ref
                            //     .watch(supaBaseAuthAsyncNotifierProvider.notifier)
                            //     .deleteUser(Supabase.instance.client.auth.currentUser?.id ?? '');
                            // if (mounted) {
                            //   const LoginPageRoute().go(context);
                            // }
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.red,
                          ),
                          child: const Text('탈퇴하기'),
                        ),
                      ],
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                ),
                child: const Text('회원탈퇴'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}