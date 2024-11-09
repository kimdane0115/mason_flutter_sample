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
    nativeAppKey: '8c84ca03ae37cae84e54f8701e72a736',
    javaScriptAppKey: '9b033a06176fed225a504a4856d92bb2',
  );
  runApp(const ProviderScope(child: App()));
}