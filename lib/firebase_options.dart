// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAKwVJTNgb85oQMTQy4tD44jdsH2HkUnHA',
    appId: '1:213271336861:android:548d5787dfa127c1b20174',
    messagingSenderId: '213271336861',
    projectId: 'treninoo',
    storageBucket: 'treninoo.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACmklLkyBoCSJdEQ_IzbhJDjoGYlNuKDI',
    appId: '1:213271336861:ios:53327da57d963b60b20174',
    messagingSenderId: '213271336861',
    projectId: 'treninoo',
    storageBucket: 'treninoo.appspot.com',
    iosClientId: '213271336861-fe01q55da9r46n6up6hdkd0knp1nk5cn.apps.googleusercontent.com',
    iosBundleId: 'it.samuelebesoli.treninoo',
  );
}