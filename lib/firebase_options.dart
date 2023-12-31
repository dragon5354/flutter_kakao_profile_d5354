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
    apiKey: 'AIzaSyBB4pwVJHqMB-KaToxgmpFoNBPJ8VKtry0',
    appId: '1:947569021393:web:be559d7fbf7239b705d0f0',
    messagingSenderId: '947569021393',
    projectId: 'flutterkakaoprofiled5354',
    authDomain: 'flutterkakaoprofiled5354.firebaseapp.com',
    storageBucket: 'flutterkakaoprofiled5354.appspot.com',
    measurementId: 'G-L5KTZHDFH2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAcmLQuny7iASR4ObfantfLrkXpqvuuhhI',
    appId: '1:947569021393:android:627da06c57d2d54505d0f0',
    messagingSenderId: '947569021393',
    projectId: 'flutterkakaoprofiled5354',
    storageBucket: 'flutterkakaoprofiled5354.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMuazCYBwRgC8hEJlkEGwnZN-a6UGFpb8',
    appId: '1:947569021393:ios:1a519e3cb281558605d0f0',
    messagingSenderId: '947569021393',
    projectId: 'flutterkakaoprofiled5354',
    storageBucket: 'flutterkakaoprofiled5354.appspot.com',
    iosBundleId: 'com.example.flutterKakaoProfileD5354',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAMuazCYBwRgC8hEJlkEGwnZN-a6UGFpb8',
    appId: '1:947569021393:ios:11f0d7b21f8e06b305d0f0',
    messagingSenderId: '947569021393',
    projectId: 'flutterkakaoprofiled5354',
    storageBucket: 'flutterkakaoprofiled5354.appspot.com',
    iosBundleId: 'com.example.flutterKakaoProfileD5354.RunnerTests',
  );
}
