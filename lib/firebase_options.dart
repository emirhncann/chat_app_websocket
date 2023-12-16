// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyBrTXkhMmScm_FSbo_8m6mewIwNA8gsGZ8',
    appId: '1:42799207797:web:5ce8b70c18bd1b7f88ef3c',
    messagingSenderId: '42799207797',
    projectId: 'chat-app-bsm',
    authDomain: 'chat-app-bsm.firebaseapp.com',
    databaseURL: 'https://chat-app-bsm-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'chat-app-bsm.appspot.com',
    measurementId: 'G-8KCK5Q930P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyACv3VuwF-KcITEKfY5XfHlm9utCbRsVYI',
    appId: '1:42799207797:android:9d63e05d467a6b9588ef3c',
    messagingSenderId: '42799207797',
    projectId: 'chat-app-bsm',
    databaseURL: 'https://chat-app-bsm-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'chat-app-bsm.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCLPsadK_gyI0HtYunNCV2TAx821YMCsKY',
    appId: '1:42799207797:ios:7cb1833ac3ede35688ef3c',
    messagingSenderId: '42799207797',
    projectId: 'chat-app-bsm',
    databaseURL: 'https://chat-app-bsm-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'chat-app-bsm.appspot.com',
    iosBundleId: 'com.example.chatAppFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCLPsadK_gyI0HtYunNCV2TAx821YMCsKY',
    appId: '1:42799207797:ios:28863ae6153c541588ef3c',
    messagingSenderId: '42799207797',
    projectId: 'chat-app-bsm',
    databaseURL: 'https://chat-app-bsm-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'chat-app-bsm.appspot.com',
    iosBundleId: 'com.example.chatAppFlutter.RunnerTests',
  );
}