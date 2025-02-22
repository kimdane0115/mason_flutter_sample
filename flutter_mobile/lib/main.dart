import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

import 'app.dart';
import 'index.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  String? fcmToken = await FirebaseMessaging.instance.getToken();
  print('>>> fcmToken : $fcmToken');
  await FirebaseService().initialize();

  await Supabase.initialize(
    url: F.supabaseUrl,
    anonKey: F.supabaseAnonKey,
  );

  KakaoSdk.init(
    nativeAppKey: '590c17080799106b8f5e245e02df17a4',
    javaScriptAppKey: '12a62e944d4fd8681eff650d2d07ff0f',
  );
  runApp(const ProviderScope(child: App()));
}