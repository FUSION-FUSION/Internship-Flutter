import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/screens/ecommerce_screen.dart';
import 'package:mobile_assessment_flutter/screens/get_started_screen.dart';
import 'package:mobile_assessment_flutter/screens/home_screen.dart';
import 'package:mobile_assessment_flutter/screens/personal_screen.dart';
import 'package:mobile_assessment_flutter/screens/sign_in_screen.dart';
import 'package:mobile_assessment_flutter/screens/splash_screen.dart';
import 'package:mobile_assessment_flutter/screens/success_screen.dart';
import 'package:mobile_assessment_flutter/screens/track_screen.dart';
import 'package:mobile_assessment_flutter/screens/verification_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: '/splashScreen',
     getPages: [
       GetPage(name: '/splashScreen', page: ()=> SplashScreen()),
       GetPage(name: '/getStartedScreen', page: ()=> const GetStartedScreen()),
       GetPage(name: '/personalScreen', page: ()=> const PersonalScreen()),
       GetPage(name: '/eCommerceScreen', page: ()=> const EcommerceScreen()),
       GetPage(name: '/verificationScreen', page: ()=> const VerificationScreen()),
       GetPage(name: '/successScreen', page: ()=> const SuccessScreen()),
       GetPage(name: '/signInScreen', page: ()=> const SignInScreen()),
       GetPage(name: '/homeScreen', page: ()=> const HomeScreen()),
       GetPage(name: '/trackScreen', page: ()=> const TrackScreen()),
     ],
    );
  }
}
