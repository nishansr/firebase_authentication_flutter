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
    apiKey: 'AIzaSyDo7htZeIf_Y36A3MyeqYgH8NiiYdOzWDI',
    appId: '1:185599076136:web:afde109f89f46c8c5d921d',
    messagingSenderId: '185599076136',
    projectId: 'fir-auth-4e1f7',
    authDomain: 'fir-auth-4e1f7.firebaseapp.com',
    storageBucket: 'fir-auth-4e1f7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDe1KrNUSArugHIYdNc9orVPQuyQTwALl8',
    appId: '1:185599076136:android:bdf9df92fd04a7335d921d',
    messagingSenderId: '185599076136',
    projectId: 'fir-auth-4e1f7',
    storageBucket: 'fir-auth-4e1f7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD3BJcK1_E76YLGt4TU2CZFegJL0rkZfeE',
    appId: '1:185599076136:ios:75882a4ea26239b45d921d',
    messagingSenderId: '185599076136',
    projectId: 'fir-auth-4e1f7',
    storageBucket: 'fir-auth-4e1f7.appspot.com',
    iosClientId: '185599076136-q02fsc7ct9d2hvkl7qqqphe2r1hgoneo.apps.googleusercontent.com',
    iosBundleId: 'com.example.authentication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD3BJcK1_E76YLGt4TU2CZFegJL0rkZfeE',
    appId: '1:185599076136:ios:b403115c0b16254b5d921d',
    messagingSenderId: '185599076136',
    projectId: 'fir-auth-4e1f7',
    storageBucket: 'fir-auth-4e1f7.appspot.com',
    iosClientId: '185599076136-1hdlpd28liophut820bhch65kvhfrrns.apps.googleusercontent.com',
    iosBundleId: 'com.example.authentication.RunnerTests',
  );
}
