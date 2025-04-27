import '../../../../index.dart';
class HomeScreen2 extends ConsumerStatefulWidget {
  const HomeScreen2({super.key});

  @override
  ConsumerState<HomeScreen2> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('📅 일자별 단어장'),
          actions: [
            IconButton(
              onPressed: () {
              },
              icon: const Icon(
                Icons.more_vert,
              ),
            ),
          ],
        ),
        // body: CarouselWithEffect(),
        body: WordCarouselPage(),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     print('개인 기록 신청');
        //   },
        // ),
      ),
    );
  }
}