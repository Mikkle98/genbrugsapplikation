import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDMU3nHuP5lmCAJcUBUedCulQ1lt_gmo0M",
            authDomain: "mitgenbrug-5579f.firebaseapp.com",
            projectId: "mitgenbrug-5579f",
            storageBucket: "mitgenbrug-5579f.appspot.com",
            messagingSenderId: "72700926816",
            appId: "1:72700926816:web:fd13b5fc09976be071dc05",
            measurementId: "G-3EP5YDNJND"));
  } else {
    await Firebase.initializeApp();
  }
}
