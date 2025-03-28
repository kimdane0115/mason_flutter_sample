// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAGMEHxoOhc3inDb5bM4gabgYCbcr-8C74',
    appId: '1:1086274562041:web:41bba807aa61180833bf28',
    messagingSenderId: '1086274562041',
    projectId: 'flutter-mobile-sample-9c35b',
    authDomain: 'flutter-mobile-sample-9c35b.firebaseapp.com',
    storageBucket: 'flutter-mobile-sample-9c35b.firebasestorage.app',
    measurementId: 'G-713SLJRGRN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfPGcPy7dZVuk6umRZ9jARv6Wd4DM-Rk8',
    appId: '1:1086274562041:android:f13cd35e0b3d907433bf28',
    messagingSenderId: '1086274562041',
    projectId: 'flutter-mobile-sample-9c35b',
    storageBucket: 'flutter-mobile-sample-9c35b.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCCsVLytG9pXNo0uToP64mSqzDot8MHMeM',
    appId: '1:1086274562041:ios:e2871eaa26a7429133bf28',
    messagingSenderId: '1086274562041',
    projectId: 'flutter-mobile-sample-9c35b',
    storageBucket: 'flutter-mobile-sample-9c35b.firebasestorage.app',
    iosBundleId: 'com.kimdane.flutterMobileSample',
  );
}
