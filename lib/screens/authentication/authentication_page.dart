import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pet_care_app/theme/colors.dart';
import 'package:pet_care_app/theme/fonts.dart';
class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
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
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0,left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 RichText(text: TextSpan(
                   children: [
                     TextSpan(text: "Welcome\nto ",style: AppFonts.boldEncodeSans.copyWith(fontSize: 44,color: AppColors.whiteColor)),
                     TextSpan(text: "Pet Care",style: AppFonts.boldEncodeSans.copyWith(fontSize: 44,color: AppColors.yellowColor)),
                   ]
                 )),
                  SizedBox(height: 40,),
                  Container(
                    alignment: Alignment.center,
                       padding:EdgeInsets.all(12),
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.squareFacebook,color: AppColors.violetColor,),
                          SizedBox(width: 10,),
                         RichText(text: TextSpan(
                           children: [
                             TextSpan(text: "Continue with ",style: AppFonts.regularOpenSans.copyWith(fontSize: 16,color: AppColors.violetColor)),
                             TextSpan(text: "Facebook",style: AppFonts.boldOpenSans.copyWith(fontSize: 16,color: AppColors.violetColor)),
                           ]
                         ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.center,
                       padding:EdgeInsets.all(12),
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.google,color: AppColors.violetColor,),
                          SizedBox(width: 10,),
                         RichText(text: TextSpan(
                           children: [
                             TextSpan(text: "Continue with ",style: AppFonts.regularOpenSans.copyWith(fontSize: 16,color: AppColors.violetColor)),
                             TextSpan(text: "Google",style: AppFonts.boldOpenSans.copyWith(fontSize: 16,color: AppColors.violetColor)),
                           ]
                         ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: AppColors.whiteColor,
                        width: 1.5
                      )
                    ),
                    child: Center(child: Text("Register with Email",style: AppFonts.boldEncodeSans.copyWith(fontSize: 16,color: AppColors.whiteColor),)),
                  ),
                  SizedBox(height: 60,),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'Already have an account?',
                          style: AppFonts.regularEncodeSans.copyWith(fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(text: ' Sign In',
                                style: AppFonts.boldEncodeSans.copyWith(fontSize: 16),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(context, "\SignIn");// navigate to desired screen
                                  }
                            )
                          ]
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
