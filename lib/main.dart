import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ipr/pages/aadhar_auth.dart';

import 'package:ipr/pages/activity_page.dart';
import 'package:ipr/pages/login_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:ipr/pages/home_page.dart';
import 'package:ipr/pages/root_app.dart';
import 'package:ipr/pages/sign_in_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AadharAuth(),
      )
  );
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {





  @override
  Widget build(BuildContext context) {

    return SplashScreen(

      seconds: 5,
      backgroundColor: Colors.white,

      image: Image.asset(
          "assets/images/logo.png"),
      loaderColor: Colors.white,

      navigateAfterSeconds: LoginScreen(),
    );
  }
}
