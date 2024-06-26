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

  static FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBoQG2hT4XNQ32Ydc_2dryblo71_4beHOQ',
    appId: '1:789248620262:web:8dcf5d2b503e33bc772d27',
    messagingSenderId: '789248620262',
    projectId: 'tubes-ppb-ec70f',
    authDomain: 'tubes-ppb-ec70f.firebaseapp.com',
    storageBucket: 'tubes-ppb-ec70f.appspot.com',
    measurementId: 'G-N2EF41WGRP',
  );

  static FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDEcdwnY86EdNrMpWObRrfejkwRp7TGp7Y',
    appId: '1:789248620262:android:7f8ce8cc498e0256772d27',
    messagingSenderId: '789248620262',
    projectId: 'tubes-ppb-ec70f',
    storageBucket: 'tubes-ppb-ec70f.appspot.com',
  );

  static FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvy3w4WMZySZxnY_lgtjh2Q8i7MVAuhgY',
    appId: '1:789248620262:ios:eca5bf1c1b4abaa2772d27',
    messagingSenderId: '789248620262',
    projectId: 'tubes-ppb-ec70f',
    storageBucket: 'tubes-ppb-ec70f.appspot.com',
    iosBundleId: 'com.example.makanYuk',
  );

  static FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCvy3w4WMZySZxnY_lgtjh2Q8i7MVAuhgY',
    appId: '1:789248620262:ios:eca5bf1c1b4abaa2772d27',
    messagingSenderId: '789248620262',
    projectId: 'tubes-ppb-ec70f',
    storageBucket: 'tubes-ppb-ec70f.appspot.com',
    iosBundleId: 'com.example.makanYuk',
  );

  static FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBoQG2hT4XNQ32Ydc_2dryblo71_4beHOQ',
    appId: '1:789248620262:web:f05782f5c12bdd54772d27',
    messagingSenderId: '789248620262',
    projectId: 'tubes-ppb-ec70f',
    authDomain: 'tubes-ppb-ec70f.firebaseapp.com',
    storageBucket: 'tubes-ppb-ec70f.appspot.com',
    measurementId: 'G-TEPGBJ8P43',
  );
}
