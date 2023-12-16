import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:resume_build/Splash_Screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,
  );
  final currentUser = FirebaseAuth.instance;
  runApp(

      MaterialApp(
        initialRoute: 'splash',
        debugShowCheckedModeBanner: false,
        routes: {
          'splash': (context) => Splash_Screen(),
        },
      )
  );
}