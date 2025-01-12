import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:url_launcher/url_launcher.dart';

/// 앱이 켜져있는 상태에서 알림 클릭 시 이벤트 (local notification)
@pragma('vm:entry-point')
void _onDidReceiveNotificationResponse(NotificationResponse notificationResponse) async {
  print('onDidReceiveNotificationResponse');
  String? payload = notificationResponse.payload;

  print('payload: $payload');
  String moveToUrl = 'http://www.phoenixdarts.com/kr/member/app_login_prc?query=0tYvQzr3hVw4BUJpEXbMaYYe%2F5CT8gdhqJKq32hPcbxRga9jihIKXjIlew%2Bl2W6%2By828FXaUK6KF%0D%0AyJT07LovF%2BdszNAGA%2BFBh23FGs5IY2dyX0n7oYXmIa4q3IXsfS0di1mY0oXyedEClr0VPA5JqBJN%0D%0AwjGYeV9j%2BIwTMABsKrPKRd9R8%2FVR2nqAZsNeHz5hurIxTz5NkGhlL6RXyMH5YaamU41My27WQDiq%0D%0AW1Ye8CIjJtYW3v%2B%2BtKERdqtYhNx7%0D%0A';
  final Uri uri = Uri.parse(moveToUrl);

  await launchUrl(uri, mode: LaunchMode.externalApplication);
}

/// 포그라운드 상태에서 수신
Future<void> _foregroundFCMHandler(RemoteMessage message) async {
  print('포그라운드 수신');
  _firebaseMessagingHandler('foreground', message);
}

/// 백그라운드 상태에서 수신
@pragma('vm:entry-point')
Future<void> _backgroundFCMHandler(RemoteMessage message) async {
  // await FirebaseService().initialize();
}

/// FCM 수신시 데이터 처리
void _firebaseMessagingHandler(String data, RemoteMessage message) async {
  print('FCM 수신 $data message : ${message.notification!.android!.priority}');

  // FirebaseCloudMessageModel fcmModel = FirebaseCloudMessageModel.fromJson(message.data);

  // showNotification(fcmModel);
  showNotification(message);
}

// FLN Push 알림
Future<void> showNotification(RemoteMessage message) async {
// Future<void> showNotification(FirebaseCloudMessageModel fcmModel) async {
  // if (fcmModel.title.isNullEmpty || fcmModel.body.isNullEmpty) {
  //   return;
  // }

  // String title = fcmModel.title!;
  // String body = fcmModel.body!;

  // String? payload;

  // payload = getPayload(fcmModel);
  AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
    channel.id,
    channel.name,
    importance: Importance.max,
    priority: Priority.max,
  );

  NotificationDetails platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(
    0,
    message.notification!.title,
    message.notification!.body,
    platformChannelSpecifics,
  );
}

bool isFlutterLocalNotificationsInitialized = false;

/// Initialize the [FlutterLocalNotificationsPlugin] package.
late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

/// Create a [AndroidNotificationChannel] for heads up notifications
late AndroidNotificationChannel channel;

RemoteMessage? previousMessage;

class FirebaseService {
  static final FirebaseService _instance = FirebaseService._internal();

  static final _firebaseMessaging = FirebaseMessaging.instance;

  factory FirebaseService() {
    return _instance;
  }

  FirebaseService._internal();

  Future<void> initialize() async {

    // 1-1. firebase request permission
    await firebaseMessageRequestPermission();

    // 2.init localNotification(add onClick Event)
    await localNotificationInit();

    // 2-1.앱이 포그라운드에 있을 때 수신
    FirebaseMessaging.onMessage.listen(_foregroundFCMHandler);

    // 2-2.앱이 백그라운드에 있을 때 수신
    FirebaseMessaging.onBackgroundMessage(_backgroundFCMHandler);
  }

    Future<void> firebaseMessageRequestPermission() async {
    await _firebaseMessaging.requestPermission(sound: true, badge: true, alert: true);
  }

  Future<void> localNotificationInit() async {
    if (isFlutterLocalNotificationsInitialized) {
      return;
    }
    channel = const AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      description: 'This channel is used for important notifications.', // description
      importance: Importance.high,
    );

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    /// Create an Android Notification Channel.
    ///
    /// We use this channel in the `AndroidManifest.xml` file to override the
    /// default FCM channel to enable heads up notifications.
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    //   alert: true,
    //   badge: true,
    //   sound: true,
    // );
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    var initializationSettingsIOS = const DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    InitializationSettings initializationsSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationsSettings,
      // 앱이 실행중일 때 노티 터치시
      onDidReceiveNotificationResponse: _onDidReceiveNotificationResponse,
      // 백그라운드 노티 클릭시
      // onDidReceiveBackgroundNotificationResponse: _onDidReceiveBackgroundNotificationResponse,
    );

    isFlutterLocalNotificationsInitialized = true;
  }
}
