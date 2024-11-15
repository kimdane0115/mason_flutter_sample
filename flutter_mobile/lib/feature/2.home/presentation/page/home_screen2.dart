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
          child: body(context),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('개인 기록 신청');
          },
        ),
      ),
    );
  }

  Widget body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '개인 기록',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(22)
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            '팀 기록',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(22)
            ),
          ),
        ],
      ),
    );
  }
}