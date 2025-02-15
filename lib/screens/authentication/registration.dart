import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme/colors.dart';
import '../../theme/fonts.dart';
class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _agreedToRules = false;
  bool _receiveNewsletter = false;

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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(FontAwesomeIcons.arrowLeftLong,color: AppColors.whiteColor,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                      child: Text("Registration",style: AppFonts.boldEncodeSans.copyWith(fontSize: 34,color: AppColors.whiteColor),),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      height: MediaQuery.of(context).size.height/2.1,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                            child: TextField(
                              controller: _fullNameController,
                              decoration: InputDecoration(

                                 label:Text("Full name",style: AppFonts.semiBoldEncodeSans.copyWith(fontSize: 13,color: AppColors.greyColor),)
                              ),
                            ),
                          ),
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
                CheckboxListTile(
                  dense: true,

                controlAffinity: ListTileControlAffinity.leading,
                   activeColor: AppColors.violetColor,
                    value: _agreedToRules,
                onChanged: (value) {
                setState(() {
                  _agreedToRules = value!;
        },
    );
    },
    title: RichText(
      text: TextSpan(
        text: 'I agree with ',
        style: AppFonts.regularOpenSans.copyWith(fontSize: 12,color: AppColors.blackColor),
        children: [
          TextSpan(
            text: 'the rules',
            style: AppFonts.boldOpenSans.copyWith(fontSize: 12,color: AppColors.violetColor,decoration: TextDecoration.underline),
          ),
        ],
      ),
    ),),
                CheckboxListTile(
                  dense: true,
                controlAffinity: ListTileControlAffinity.leading,
                   activeColor: AppColors.violetColor,
                    value: _receiveNewsletter,
                onChanged: (value) {
                setState(() {
                  _receiveNewsletter = value!;
        },
    );
    },
    title: Text("I do not want to receive newsletter",style: AppFonts.regularEncodeSans.copyWith(fontSize: 12),)),
                         SizedBox(height: 10,),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.3,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.violetColor,
                            ),
                            child: Center(
                              child: Text(
                                "Sign Up",
                                style: AppFonts.boldEncodeSans.copyWith(
                                  fontSize: 16,
                                  color: AppColors.whiteColor,
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
                            text: "Already have an account? ",
                            style: AppFonts.regularEncodeSans.copyWith(fontSize: 16,color: AppColors.blackColor),
                            children: <TextSpan>[
                              TextSpan(text: 'Sign In',
                                  style: AppFonts.boldEncodeSans.copyWith(fontSize: 16,color: AppColors.violetColor),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushNamed(context, "\SignIn");// navigate to desired screen
                                    }
                              )
                            ]
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
