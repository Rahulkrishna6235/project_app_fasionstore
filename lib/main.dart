import 'package:fashion_store/screens/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'fasion store/Screens_project/splashscreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => HomeAllProduct());

    return
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      );
  }
}
