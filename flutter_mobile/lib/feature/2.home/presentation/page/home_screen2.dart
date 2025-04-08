import 'package:flutter_mobile/feature/2.home/presentation/page/word_carousel_page.dart';

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
          title: const Text('팀명'),
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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: WordCarouselPage(),
          // child: CarouselWithEffect(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('개인 기록 신청');
          },
        ),
      ),
    );
  }
}