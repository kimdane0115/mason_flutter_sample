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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDKNrUmz9cNq_38VwUt-pkfNiD4A_1TMtQ',
    appId: '1:179101698842:web:3a0840690413e2f9237aa3',
    messagingSenderId: '179101698842',
    projectId: 'flutter-sample-9782b',
    authDomain: 'flutter-sample-9782b.firebaseapp.com',
    storageBucket: 'flutter-sample-9782b.appspot.com',
    measurementId: 'G-QS4YX59JB1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAKHIlikpu1bhFDSxz7UIIHENgarnJRLOs',
    appId: '1:179101698842:android:a982277f0e147bb0237aa3',
    messagingSenderId: '179101698842',
    projectId: 'flutter-sample-9782b',
    storageBucket: 'flutter-sample-9782b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAEqJIhMuxAJggcGm1X1i8PED2zRYBmwjY',
    appId: '1:179101698842:ios:9a1ef6a37718bd4c237aa3',
    messagingSenderId: '179101698842',
    projectId: 'flutter-sample-9782b',
    storageBucket: 'flutter-sample-9782b.appspot.com',
    iosBundleId: 'com.example.flutterSample',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAEqJIhMuxAJggcGm1X1i8PED2zRYBmwjY',
    appId: '1:179101698842:ios:9a1ef6a37718bd4c237aa3',
    messagingSenderId: '179101698842',
    projectId: 'flutter-sample-9782b',
    storageBucket: 'flutter-sample-9782b.appspot.com',
    iosBundleId: 'com.example.flutterSample',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDKNrUmz9cNq_38VwUt-pkfNiD4A_1TMtQ',
    appId: '1:179101698842:web:03ab4cd817ddbc89237aa3',
    messagingSenderId: '179101698842',
    projectId: 'flutter-sample-9782b',
    authDomain: 'flutter-sample-9782b.firebaseapp.com',
    storageBucket: 'flutter-sample-9782b.appspot.com',
    measurementId: 'G-ENEJYBQFF7',
  );
}