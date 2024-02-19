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
    apiKey: 'AIzaSyBPqsBTvpk-huXN-Do7wMX1OP6t0LCSTC4',
    appId: '1:882793678109:web:e5e36ea59004f7e7b14df4',
    messagingSenderId: '882793678109',
    projectId: 'safely-83bae',
    authDomain: 'safely-83bae.firebaseapp.com',
    storageBucket: 'safely-83bae.appspot.com',
    measurementId: 'G-YTDBJGZ7RE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCxndOllTvv-WNN6Bc3J1zB3vTPbE7o8yk',
    appId: '1:882793678109:android:160628f94a3f0ceeb14df4',
    messagingSenderId: '882793678109',
    projectId: 'safely-83bae',
    storageBucket: 'safely-83bae.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBiozzDSiH9f12CTw_rgIxiExhQmnL9QV4',
    appId: '1:882793678109:ios:d367c7325b08428bb14df4',
    messagingSenderId: '882793678109',
    projectId: 'safely-83bae',
    storageBucket: 'safely-83bae.appspot.com',
    iosBundleId: 'com.example.helpify',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBiozzDSiH9f12CTw_rgIxiExhQmnL9QV4',
    appId: '1:882793678109:ios:3a747af93a101038b14df4',
    messagingSenderId: '882793678109',
    projectId: 'safely-83bae',
    storageBucket: 'safely-83bae.appspot.com',
    iosBundleId: 'com.example.helpify.RunnerTests',
  );
}
