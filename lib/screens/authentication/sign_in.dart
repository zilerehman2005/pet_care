import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_care_app/screens/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:pet_care_app/theme/colors.dart';
import 'package:pet_care_app/theme/fonts.dart';
class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2.5,
            color: AppColors.violetColor,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(FontAwesomeIcons.arrowLeftLong,color: AppColors.whiteColor,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    child: Text("Sign In",style: AppFonts.boldEncodeSans.copyWith(fontSize: 34,color: AppColors.whiteColor),),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    height: MediaQuery.of(context).size.height/2.7,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              label:Text("Email",style: AppFonts.semiBoldEncodeSans.copyWith(fontSize: 13,color: AppColors.violetColor),),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          child: TextField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                                focusColor: AppColors.violetColor,
                                labelStyle: AppFonts.semiBoldEncodeSans.copyWith(color: AppColors.violetColor),
                                label:Text("Password",style: AppFonts.semiBoldEncodeSans.copyWith(fontSize: 13,color: AppColors.violetColor),),
                                suffixIcon: Icon(Icons.visibility_outlined,color: AppColors.greyColor,size: 18,)
                            ),
                            obscureText: true,
                          ),

                        ),
                        Align(
                          alignment: FractionalOffset.bottomRight,
                          child: TextButton(
                              onPressed: (){}, child: Text("Do not remember the password?",style: AppFonts.regularOpenSans.copyWith(fontSize: 16,color: AppColors.violetColor),)),
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar(),));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.3,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.violetColor,
                            ),
                            child: Center(
                              child: Text(
                                "Sign In",
                                style: AppFonts.boldEncodeSans.copyWith(
                                  fontSize: 16,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(child: Text("or continue with",style: AppFonts.regularEncodeSans.copyWith(fontSize: 16),)),
                SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.fbIconColor,
                        child: Icon(FontAwesomeIcons.facebookF,color: AppColors.whiteColor,),
                      ),
                      SizedBox(width: 40,),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.googleIconColor,
                        child: Icon(FontAwesomeIcons.google,color: AppColors.whiteColor,),
                      ),
                    ],
                  ),
                  SizedBox(height: 60,),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          text: "Don't have account yet? ",
                          style: AppFonts.regularEncodeSans.copyWith(fontSize: 16,color: AppColors.blackColor),
                          children: <TextSpan>[
                            TextSpan(text: 'Registration',
                                style: AppFonts.boldEncodeSans.copyWith(fontSize: 16,color: AppColors.violetColor),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(context, "\Registration");// navigate to desired screen
                                  }
                            )
                          ]
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
