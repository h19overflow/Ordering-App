import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/RecipesScreen.dart';

class StackImageWidget extends StatelessWidget {
  const StackImageWidget(
      {required this.title, required this.imagePath, required, Key? key})
      : super(key: key);
  final String imagePath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 0,
      onTap: () {
        Get.to(() => RecipesScreen(
              title: title,
              listOfRecipes: [],
            ));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 15),
        margin: const EdgeInsets.only(bottom: 15),
        child: Stack(
          children: [
            Container(
              color: Colors.transparent,
            ),
            Container(
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Color(0x006b6b6b),
                      spreadRadius: 5,
                      offset: Offset(2, 2),
                      blurRadius: 7)
                ],
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
              ),
              margin: const EdgeInsets.only(top: 70),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 10, right: 20, bottom: 40, top: 15),
              child: Image.asset(
                imagePath,
                height: 250,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 160, right: 90, left: 10),
              child: Center(
                child: Text(
                  title,
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
