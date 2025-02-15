import 'package:flutter/material.dart';
import 'package:pet_care_app/screens/authentication/authentication_page.dart';
import 'package:pet_care_app/screens/authentication/registration.dart';
import 'package:pet_care_app/screens/authentication/sign_in.dart';
import 'package:pet_care_app/screens/home_Screens/home_screen.dart';
import 'package:pet_care_app/screens/on_boarding_screens/onboarding.dart';
import 'package:pet_care_app/screens/splash_Screen/splash_screen.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';



void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding); // Keeps splash screen
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '\splashscreen',
      routes: {
        '\splashscreen': (context) => const SplashScreen(),
        '\onBoarding': (context) => const OnboardingScreen(),
        '\AuthenticationPage': (context) => const AuthenticationPage(),
        '\SignIn': (context) =>  SignIn(),
        '\Registration': (context) =>  Registration(),
        '\HomeScreen': (context) =>  HomeScreen(),
      },
    );
  }
}

