import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_care_app/screens/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:pet_care_app/screens/helper/category_container.dart';
import 'package:pet_care_app/theme/colors.dart';

import '../../theme/fonts.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      FontAwesomeIcons.magnifyingGlass,color: AppColors.violetColor),
                  ),
              SizedBox(height: 60,),
              Text('What are you',style: AppFonts.boldEncodeSans.copyWith(fontSize: 34,color: AppColors.blackColor),),
              RichText(
                text: TextSpan(
                  text: "looking for, ",
                  style: AppFonts.boldEncodeSans.copyWith(fontSize: 34,color: AppColors.blackColor),
                  children: [
                    TextSpan(
                      text: "Zille?",
                      style: AppFonts.boldEncodeSans.copyWith(fontSize: 34,color: AppColors.yellowColor)
                    )
                  ]
                ),
              ),
               SizedBox(height: 20,),
               CategoryContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
