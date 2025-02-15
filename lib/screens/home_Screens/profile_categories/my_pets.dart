import 'package:flutter/material.dart';
import 'package:pet_care_app/screens/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:pet_care_app/theme/colors.dart';
import 'package:pet_care_app/theme/fonts.dart';
class MyPets extends StatelessWidget {
  const MyPets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_sharp,color: AppColors.violetColor,)),
        title: Text("My pets",style: AppFonts.boldEncodeSans.copyWith(fontSize: 18,color: AppColors.blackColor),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add,color: AppColors.violetColor,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width,
              height: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.whiteColor
              ),
              child: Column(
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.edit,color: AppColors.violetColor,size: 20,),
                    SizedBox(width: 5,),
                    Text("Edit",style: AppFonts.semiBoldEncodeSans.copyWith(fontSize: 13,color: AppColors.violetColor),)
                  ],
                ),
                  SizedBox(height: 20,),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/troy.png"),
                  ),
                  SizedBox(height: 20,),
                  Text("Troy",style: AppFonts.boldEncodeSans.copyWith(fontSize: 24)),
                  Text("Toy terrior",style: AppFonts.regularOpenSans.copyWith(fontSize: 16,color: AppColors.greyColor),),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColors.greyColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add,color: AppColors.violetColor),
                  SizedBox(width: 5,),
                  Text("Add another pet",style: AppFonts.boldEncodeSans.copyWith(fontSize: 16,color: AppColors.violetColor),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
