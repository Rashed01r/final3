import 'package:final_project/firebase_options.dart';
import 'package:final_project/local/local.dart';
import 'package:final_project/view/ActivityPage.dart';
import 'package:final_project/view/Homehome.dart';
import 'package:final_project/view/LoginPage.dart';
import 'package:final_project/view/PlacesPage.dart';
import 'package:final_project/view/ProfilePage.dart';
import 'package:final_project/view/Singup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      translations: MyLocale(),
      home: SingUp(),
    );
  }
}
