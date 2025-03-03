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
    apiKey: 'AIzaSyD9HRhL0qJOhncnHShQpBXu5lS_XDP1JM8',
    appId: '1:753175679683:web:1bb32918a7fd833176c876',
    messagingSenderId: '753175679683',
    projectId: 'flutter-mobile-a063e',
    authDomain: 'flutter-mobile-a063e.firebaseapp.com',
    storageBucket: 'flutter-mobile-a063e.firebasestorage.app',
    measurementId: 'G-9MNT8LWV9J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbE2WVGBqf7xZqENBriL6yxb4JgOWKg2s',
    appId: '1:753175679683:android:753e65d46178d08a76c876',
    messagingSenderId: '753175679683',
    projectId: 'flutter-mobile-a063e',
    storageBucket: 'flutter-mobile-a063e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAAU-5--dkrnpYdHwtmDqFW0EhhqFPjshg',
    appId: '1:753175679683:ios:8ed4dde72ce557e476c876',
    messagingSenderId: '753175679683',
    projectId: 'flutter-mobile-a063e',
    storageBucket: 'flutter-mobile-a063e.firebasestorage.app',
    iosBundleId: 'com.kimdane.flutterMobile',
  );
}
