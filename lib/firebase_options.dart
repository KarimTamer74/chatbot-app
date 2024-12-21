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
    apiKey: 'AIzaSyDKU0uIm_DBxBQQ1c-087b-xpJhNmwjXTg',
    appId: '1:990554513330:web:f3842ef2d12de9cd148eab',
    messagingSenderId: '990554513330',
    projectId: 'chatbot-app-6e240',
    authDomain: 'chatbot-app-6e240.firebaseapp.com',
    storageBucket: 'chatbot-app-6e240.firebasestorage.app',
    measurementId: 'G-5PQTTVNGST',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDEu7cuJVvNtEITMJnS4pn_al90ECFY530',
    appId: '1:990554513330:android:f765dd725b9bd307148eab',
    messagingSenderId: '990554513330',
    projectId: 'chatbot-app-6e240',
    storageBucket: 'chatbot-app-6e240.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDCZrWTo33S2-XLqyPiPpxWGSThwFziqds',
    appId: '1:990554513330:ios:bc0f4f65312ee91f148eab',
    messagingSenderId: '990554513330',
    projectId: 'chatbot-app-6e240',
    storageBucket: 'chatbot-app-6e240.firebasestorage.app',
    iosBundleId: 'com.example.chatbotApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDCZrWTo33S2-XLqyPiPpxWGSThwFziqds',
    appId: '1:990554513330:ios:bc0f4f65312ee91f148eab',
    messagingSenderId: '990554513330',
    projectId: 'chatbot-app-6e240',
    storageBucket: 'chatbot-app-6e240.firebasestorage.app',
    iosBundleId: 'com.example.chatbotApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDKU0uIm_DBxBQQ1c-087b-xpJhNmwjXTg',
    appId: '1:990554513330:web:c5ba07b3a9d53406148eab',
    messagingSenderId: '990554513330',
    projectId: 'chatbot-app-6e240',
    authDomain: 'chatbot-app-6e240.firebaseapp.com',
    storageBucket: 'chatbot-app-6e240.firebasestorage.app',
    measurementId: 'G-ED7S68D4SN',
  );
}