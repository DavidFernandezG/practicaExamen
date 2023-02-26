import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBaOFS32iguNM2casQ4JnQr-p9eVSW31oc",
            authDomain: "practicaexamen-d13be.firebaseapp.com",
            projectId: "practicaexamen-d13be",
            storageBucket: "practicaexamen-d13be.appspot.com",
            messagingSenderId: "690815796934",
            appId: "1:690815796934:web:c90f1d9166b38825a0b9c7",
            measurementId: "G-PCSPJX03H6"));
  } else {
    await Firebase.initializeApp();
  }
}
