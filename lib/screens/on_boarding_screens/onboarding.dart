import 'package:flutter/material.dart';
import 'package:pet_care_app/screens/authentication/authentication_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:pet_care_app/theme/colors.dart';
import 'package:pet_care_app/theme/fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign In",
                    style: AppFonts.semiBoldEncodeSans.copyWith(
                      fontSize: 15,
                      color: AppColors.violetColor,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                children: [
                  buildPage(
                    "assets/images/illustration.png",
                    "Welcome to Pet Care",
                    "All types of services for your pet in one place, instantly searchable.",
                  ),
                  buildPage(
                    "assets/images/onBoarding2.png",
                    "Proven experts",
                    "we interview every specialist before they get to work",
                  ),
                  buildPage(
                    "assets/images/onBoarding3.png",
                    "Reliable Reviews",
                    "A review can be left ony by a user who used the service",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                if (currentIndex < 2) {
                  _pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease);
                } else {
                  Navigator.pushReplacementNamed(context, '\AuthenticationPage');
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.violetColor,
                ),
                child: Center(
                  child: Text(
                    currentIndex == 2 ? "Get Started" : "Next",
                    style: AppFonts.boldEncodeSans.copyWith(
                      fontSize: 16,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }

  Widget buildPage(String image, String title, String subtitle) {
    return Column(

      children: [
        Image.asset(
          image,
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.contain,
        ),

        SmoothPageIndicator(
          controller: _pageController,
          count: 3,
          effect: ExpandingDotsEffect(
            dotHeight: 10,
            dotWidth: 10, // Width of inactive dots
            expansionFactor: 2.5, // Expands the active dot width
            activeDotColor: AppColors.orangeColor,
            dotColor: Colors.grey.shade300,
          ),
        ),
        SizedBox(height: 20,),
        Text(
          title,
          style: AppFonts.boldEncodeSans.copyWith(
            fontSize: 24,
            color: AppColors.navyblueColor,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding:EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            subtitle,
            style: AppFonts.regularEncodeSans.copyWith(
              fontSize: 16,
              color: AppColors.navyblueColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
