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
    apiKey: 'AIzaSyDWwcxQr7OaZ_4G3m3CxoNElLpIo1pAjJI',
    appId: '1:859851608344:web:5de876c9871e604d348e6d',
    messagingSenderId: '859851608344',
    projectId: 'my-portfolio-fb0f9',
    authDomain: 'my-portfolio-fb0f9.firebaseapp.com',
    storageBucket: 'my-portfolio-fb0f9.appspot.com',
    measurementId: 'G-GTH5PJNFX4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDT5i0DIaBHwdpSGDwd7odRj4YjIvxA9u8',
    appId: '1:859851608344:android:25a779d3b0ae998f348e6d',
    messagingSenderId: '859851608344',
    projectId: 'my-portfolio-fb0f9',
    storageBucket: 'my-portfolio-fb0f9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCQPhbI6-j6JC9AhqrvBjED7yrS7hZFIAg',
    appId: '1:859851608344:ios:a765de332c1865fd348e6d',
    messagingSenderId: '859851608344',
    projectId: 'my-portfolio-fb0f9',
    storageBucket: 'my-portfolio-fb0f9.appspot.com',
    iosClientId: '859851608344-rm2si74srijq9l08iseep74bj70mbakl.apps.googleusercontent.com',
    iosBundleId: 'com.kelvinatemiehart.kelvinAtemieHartPortfolio',
  );
}
