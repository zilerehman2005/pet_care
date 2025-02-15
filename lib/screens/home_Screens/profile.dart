import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_care_app/screens/home_Screens/profile_categories/add_pet_Service.dart';
import 'package:pet_care_app/screens/home_Screens/profile_categories/help.dart';
import 'package:pet_care_app/screens/home_Screens/profile_categories/invite_friends.dart';
import 'package:pet_care_app/screens/home_Screens/profile_categories/my%20favourites.dart';
import 'package:pet_care_app/screens/home_Screens/profile_categories/my_pets.dart';
import 'package:pet_care_app/screens/home_Screens/profile_categories/settings.dart';
import 'package:pet_care_app/theme/colors.dart';
import 'package:pet_care_app/theme/fonts.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.greyColor,
                      spreadRadius: 0.5,
                      blurRadius: 2,blurStyle: BlurStyle.outer
                    )
                  ]
                ),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: Center(child: Text("Profile",style: AppFonts.boldEncodeSans.copyWith(fontSize: 18,),textAlign: TextAlign.center, ))),
                          Icon(Icons.edit,color: AppColors.violetColor,),
                          SizedBox(width: 5,),
                          Text("Edit",style: AppFonts.semiBoldEncodeSans.copyWith(fontSize: 13,color: AppColors.violetColor),)
                        ],
                      ),
                      SizedBox(height:30,),
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/profile.png"),
                      ),
                      SizedBox(height: 10,),
                      Text("Maria Martinez",style: AppFonts.boldEncodeSans.copyWith(fontSize: 24)),
                      Text("Kiev",style: AppFonts.regularOpenSans.copyWith(fontSize: 16,color: AppColors.greyColor),)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    // List of text and icons for each list item
                    final List<Map<String, dynamic>> menuItems = [
                      {"text": "My Pets", "icon": Icons.pets, "route": MyPets()},
                      {"text": "My Favorites", "icon": Icons.favorite, "route": Myfavourites()},
                      {"text": "Add Pet Service", "icon": Icons.add_circle_outline, "route": AddPetService()},
                      {"text": "Invite Friends", "icon": Icons.group_add, "route": InviteFriends()},
                      {"text": "Help", "icon": Icons.help_outline, "route": Help()},
                      {"text": "Settings", "icon": Icons.settings, "route": Settings()},
                    ];

                    return ListTile(
                      onTap: () {
                        // Navigate to the respective screen when tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => menuItems[index]['route']),
                        );
                      },
                      trailing: Icon(Icons.arrow_forward_ios, color: AppColors.greyColor),
                      leading: CircleAvatar(
                        child: Icon(menuItems[index]['icon'], color: AppColors.violetColor),
                      ),
                      title: Text(
                        menuItems[index]['text'],
                        style: AppFonts.regularEncodeSans.copyWith(fontSize: 16),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(color: AppColors.greyColor),
                  itemCount: 6, // Total number of items
                ),
              )

            ],
          )
        ],
      ),
    );
  }
}

