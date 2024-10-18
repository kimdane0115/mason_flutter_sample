import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app.dart';
import 'core/constants/index.dart';
import 'flavors.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await Supabase.initialize(
    url: F.supabaseUrl,
    anonKey: F.supabaseAnonKey,
  );

  KakaoSdk.init(
    nativeAppKey: 'b74645c04d1ef9db4b61799757d5a353',
    javaScriptAppKey: 'c3d1f6171f383623f38968b1ab59cb3e',
  );
  runApp(const ProviderScope(child: App()));
}