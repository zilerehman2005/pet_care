import 'package:flutter/material.dart';
import 'package:pet_care_app/theme/colors.dart';
import 'package:pet_care_app/theme/fonts.dart';
class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 3 items in a row
        childAspectRatio: 1, // Makes the container square
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index]; // Get each category item

        return Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                category.imagePath, //
                height: 40,
                width: 40,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              Text(
                category.text, //
                style: AppFonts.semiBoldEncodeSans.copyWith(fontSize: 11),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}

class CategoryModel{
  final String imagePath;
  final String text;
  CategoryModel({required this.imagePath,required this.text});
}
final List<CategoryModel> categories = [
  CategoryModel(imagePath: "assets/images/icon1.png", text: "Veterinary"),
  CategoryModel(imagePath: "assets/images/icon2.png", text: "Grooming"),
  CategoryModel(imagePath: "assets/images/icon3.png", text: "Pet boarding"),
  CategoryModel(imagePath: "assets/images/icon4.png", text: "Adoption"),
  CategoryModel(imagePath: "assets/images/icon5.png", text: "Dog walking"),
  CategoryModel(imagePath: "assets/images/icon6.png", text: "Training"),
  CategoryModel(imagePath: "assets/images/icon7.png", text: "Pet taxi"),
  CategoryModel(imagePath: "assets/images/icon8.png", text: "Pet date"),
  CategoryModel(imagePath: "assets/images/icon9.png", text: "other"),
];
