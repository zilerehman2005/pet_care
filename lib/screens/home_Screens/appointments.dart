import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_care_app/theme/colors.dart';
import 'package:pet_care_app/theme/fonts.dart';
class Appointments extends StatefulWidget {
  const Appointments({super.key});

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  bool isUpcomingSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.whiteColor,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text("Appointments",
                        style: AppFonts.boldEncodeSans.copyWith(fontSize: 18),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80,),
              Icon(FontAwesomeIcons.solidClock,size: 100,color: AppColors.greyColor,),
              SizedBox(height: 20,),
              Text("No appointment yet",style: AppFonts.regularOpenSans.copyWith(fontSize: 16,color: AppColors.greyColor),),
              Spacer(),
              Container(
                padding: EdgeInsets.all(14),
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.violetColor
                ),
                child: Center(child: Text("Find a Specialist",style: AppFonts.boldEncodeSans.copyWith(fontSize: 16,color: AppColors.whiteColor),)),
              ),
              SizedBox(
                height: 30,
              )
            ],
          )
        ],
      ),
    );
  }


}