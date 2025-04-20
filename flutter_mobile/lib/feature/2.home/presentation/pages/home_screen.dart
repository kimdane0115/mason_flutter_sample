import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/service/firebase_service.dart';
import '../../../../index.dart';
import '../providers/home_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // FirebaseMessaging.instance
    //     .getInitialMessage()
    //     .then((RemoteMessage? message) {
    //   if (message != null) {
    //     if (message.notification != null) {
    //         print("test message!!!!!");
    //       	print(message.notification!.title);
    //         print(message.notification!.body);
    //         print(message.notification!.android!.priority);
    //         // print(message.data["click_action"]);
    //     }
    //   }
    // });
    // 앱이 꺼져있는 상태에서 알림 클릭 시
      FirebaseMessaging.instance.getInitialMessage().then((message) async {
        print('FCM Click(FirebaseMessaging.getInitialMessage)');
        if (message != null) {
          if (previousMessage?.messageId == message.messageId) {
            return;
          }
          print('message : $message');
          String moveToUrl = 'http://www.phoenixdarts.com/kr/member/app_login_prc?query=0tYvQzr3hVw4BUJpEXbMaYYe%2F5CT8gdhqJKq32hPcbxRga9jihIKXjIlew%2Bl2W6%2By828FXaUK6KF%0D%0AyJT07LovF%2BdszNAGA%2BFBh23FGs5IY2dyX0n7oYXmIa4q3IXsfS0di1mY0oXyedEClr0VPA5JqBJN%0D%0AwjGYeV9j%2BIwTMABsKrPKRd9R8%2FVR2nqAZsNeHz5hurIxTz5NkGhlL6RXyMH5YaamU41My27WQDiq%0D%0AW1Ye8CIjJtYW3v%2B%2BtKERdqtYhNx7%0D%0A';
          final Uri uri = Uri.parse(moveToUrl);

          await launchUrl(uri, mode: LaunchMode.externalApplication);
          previousMessage = message;
          // await handleFirebaseMessage(message);
        }
      });

      // 백그라운드에서 알림 클릭 시
      FirebaseMessaging.onMessageOpenedApp.listen(
        (message) async {
          print('FCM Click(FirebaseMessaging.onMessageOpenedApp.listen)');
          String moveToUrl = 'http://www.phoenixdarts.com/kr/member/app_login_prc?query=0tYvQzr3hVw4BUJpEXbMaYYe%2F5CT8gdhqJKq32hPcbxRga9jihIKXjIlew%2Bl2W6%2By828FXaUK6KF%0D%0AyJT07LovF%2BdszNAGA%2BFBh23FGs5IY2dyX0n7oYXmIa4q3IXsfS0di1mY0oXyedEClr0VPA5JqBJN%0D%0AwjGYeV9j%2BIwTMABsKrPKRd9R8%2FVR2nqAZsNeHz5hurIxTz5NkGhlL6RXyMH5YaamU41My27WQDiq%0D%0AW1Ye8CIjJtYW3v%2B%2BtKERdqtYhNx7%0D%0A';
          final Uri uri = Uri.parse(moveToUrl);

          await launchUrl(uri, mode: LaunchMode.externalApplication);
          // await handleFirebaseMessage(message);
        },
      );
  }
  @override
  Widget build(BuildContext context) {
    
    ref.listen(signAsyncNotifierProvider, (previous, next) {
      if (previous != null && previous.hasValue) {
        return;
      }
      if (next.hasValue) {
        if (next.isLoading == false && next.value?.status == 'drop') {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => PopScope(
              canPop: false,
              child: AlertDialog(
                title: const Text('알림'),
                content: const Text('탈퇴된 계정입니다.\n로그인 페이지로 이동합니다.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      ref.read(supaBaseAuthAsyncNotifierProvider.notifier).signOut();
                    },
                    child: const Text('확인'),
                  ),
                ],
              ),
            ),
          );
        }
      }
    });
    
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
        // body: home(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: body(context),
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
            '금주 일정',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(22)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // customCalendar(),
                  // const VerticalDivider(),
                  // const Column(
                  //   children: [
                  //     Text(' 2024년 5월 일정'),
                  //     SizedBox(height: 4,),
                  //     Text(' vs team_name', style: TextStyle(color: Color(0xFFBFBFBF),),),
                  //     Text(' vs team_name', style: TextStyle(color: Color(0xFFBFBFBF),),),
                  //     Text(' vs team_name', style: TextStyle(color: Color(0xFFBFBFBF),),),
                  //     Text(' vs team_name', style: TextStyle(fontWeight: FontWeight.bold),),
                  //   ],
                  // )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            '전적',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(22)
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            '참석/불참석',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(22)
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('김동욱'),
                  Text('김동욱'),
                  Text('김동욱'),
                  Text('김동욱'),
                  Text('김동욱'),
                  Text('김동욱'),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget customCalendar() {
    DateTime now = DateTime.now();
    DateTime focusedDay = DateTime.utc(2024, 5, 18);
    const double fontSize = 12;
    return SizedBox(
      width: 200,
      // height: 150,
      child: TableCalendar(
          headerVisible: false,
          // daysOfWeekHeight: 2,
          daysOfWeekStyle: const DaysOfWeekStyle(
            weekdayStyle: TextStyle(
              fontSize: fontSize,
            ),
            weekendStyle: TextStyle(fontSize: fontSize)),
        calendarStyle: const CalendarStyle(
            weekendTextStyle: TextStyle(fontSize: fontSize),
            weekNumberTextStyle: TextStyle(fontSize: fontSize),
            outsideTextStyle: TextStyle(fontSize: fontSize,),
            defaultTextStyle: TextStyle(fontSize: fontSize),
            disabledTextStyle: TextStyle(fontSize: fontSize, color: Color(0xFFBFBFBF)),
            selectedTextStyle: TextStyle(fontSize: fontSize),
            todayTextStyle: TextStyle(fontSize: fontSize, color: Color(0xFFFAFAFA)),
            cellMargin: EdgeInsets.all(1),
            ),
          shouldFillViewport: true,
          firstDay: DateTime(now.year, now.month, 1),
          // firstDay: DateTime(2024, 5, 18, 1),
          lastDay: DateTime(now.year, now.month + 1, 0),
          // lastDay: DateTime(2022),
          focusedDay: focusedDay,
          currentDay: focusedDay,
          // focusedDay: DateTime.utc(2024,5,1),
          ),
    );
  }

  Widget home() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            // googlelogin();
            ref.watch(supaBaseAuthAsyncNotifierProvider.notifier).signOut();
          },
          child: const Text('LogOut'),
        ),
        ElevatedButton(
          onPressed: () {
            // googlelogin();
            getFcmToken();
          },
          child: const Text('getFcm Token'),
        ),
        ElevatedButton(
          onPressed: () {
            ref.read(getMembersProvider).call('');
          },
          child: const Text('Get Memeber'),
        ),
        ElevatedButton(
          onPressed: () {
            final request = {
              'name': '호날두',
              'fcm_token': '123456',
              'profile_image_url': '1234567',
              'created_at': DateTime.now().toIso8601String(),
            };
            ref.read(addMemberProvider).call(request);
          },
          child: const Text('Add Memeber'),
        ),
        ElevatedButton(
          onPressed: () {
            final request = {
              // 'name': '메시',
              'fcm_token': 'adkfkj',
              'profile_image_url': 'https://www.ddd.com',
              'updated_at': DateTime.now().toIso8601String(),
            };
            // final request = {
            //   'region' : '111111'
            // };
            ref.read(updateMemeberProvider).call(request, 4);
          },
          child: const Text('Update Memeber'),
        ),
        ElevatedButton(
          onPressed: () {
            ref.read(deleteMemeberProvider).call(7);
          },
          child: const Text('Deleted Memeber'),
        ),
      ],
    );
  }
  Future<void> getFcmToken() async {
    String? token = await FirebaseMessaging.instance.getToken();

    print('>>>> fcmToken : $token');
  }

    Future<void> googlelogin() async {
     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      print('>>>> displayName : ${googleUser?.displayName}');
      print('>>>> email : ${googleUser?.email}');
      print('>>>> accessToken : ${googleAuth?.accessToken}');
      print('>>>> idToken : ${googleAuth?.idToken}');

       OAuthCredential googleCredential = GoogleAuthProvider.credential(
        idToken: googleAuth?.idToken,
        accessToken: googleAuth?.accessToken,
      );

      UserCredential credential =
          await FirebaseAuth.instance.signInWithCredential(googleCredential);
      if (credential.user != null) {
        print(">>>> ${credential.user}");
      }

      // Create a new credential
      // final credential = GoogleAuthProvider.credential(
      //   accessToken: googleAuth?.accessToken,
      //   idToken: googleAuth?.idToken,
      // );
  }
}