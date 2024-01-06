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
    apiKey: 'AIzaSyCQoClO465DmCcnvXxguL6X-GZiMiasqps',
    appId: '1:834697553646:web:7997468911f3bc394bf5ff',
    messagingSenderId: '834697553646',
    projectId: 'instagramclone-995a6',
    authDomain: 'instagramclone-995a6.firebaseapp.com',
    storageBucket: 'instagramclone-995a6.appspot.com',
    measurementId: 'G-WCM30LLQ10',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAUic7eih4-gdya3RORslSb_-TGC5P20IA',
    appId: '1:834697553646:android:55bb04c31ecbada14bf5ff',
    messagingSenderId: '834697553646',
    projectId: 'instagramclone-995a6',
    storageBucket: 'instagramclone-995a6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBf2ZgoyNeOVv1JpKiOVqV5akplQ_qZpIY',
    appId: '1:834697553646:ios:949811d7fd572d4e4bf5ff',
    messagingSenderId: '834697553646',
    projectId: 'instagramclone-995a6',
    storageBucket: 'instagramclone-995a6.appspot.com',
    iosBundleId: 'com.techTribeServices.instagramClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBf2ZgoyNeOVv1JpKiOVqV5akplQ_qZpIY',
    appId: '1:834697553646:ios:5e2be86cdfb1d3414bf5ff',
    messagingSenderId: '834697553646',
    projectId: 'instagramclone-995a6',
    storageBucket: 'instagramclone-995a6.appspot.com',
    iosBundleId: 'com.example.instagramClone.RunnerTests',
  );
}
