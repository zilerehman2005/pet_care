import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to Onboarding after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '\onBoarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF4596EA),
                  Color(0xFF2E1E7A),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                pawPrintPositions.length,
                    (index) => Transform.translate(
                  offset: pawPrintPositions[index],
                  child: const Icon(
                    Icons.pets,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Positions of paw prints relative to the center
final List<Offset> pawPrintPositions = [
  Offset(0, -100),
  Offset(-20, -60),
  Offset(20, -20),
  Offset(-30, 20),
  Offset(30, 60),
  Offset(-10, 100),
];

// Onboarding Screen
