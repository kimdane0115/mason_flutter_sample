import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

import 'app.dart';
import 'index.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await Supabase.initialize(
    url: F.supabaseUrl,
    anonKey: F.supabaseAnonKey,
  );

  KakaoSdk.init(
    nativeAppKey: 'fe5731a4510c5fc597c724e9ec4d7e20',
    javaScriptAppKey: '7d96eb9274cb817c26bbfe9f2e355f7f',
  );
  runApp(const ProviderScope(child: App()));
}