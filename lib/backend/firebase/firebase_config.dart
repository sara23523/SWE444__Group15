import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC9c4vs-L8cM1yRMmlLnaK55Yr6cLtk_L0",
            authDomain: "unlock-444.firebaseapp.com",
            projectId: "unlock-444",
            storageBucket: "unlock-444.appspot.com",
            messagingSenderId: "22921355697",
            appId: "1:22921355697:web:ef9e5870ab7b8c38255d90",
            measurementId: "G-WVVS6CGCJS"));
  } else {
    await Firebase.initializeApp();
  }
}
