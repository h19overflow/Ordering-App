import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawerButton extends StatelessWidget {
  const CustomDrawerButton({
    super.key,
    required this.imagePath,
    required this.function,
    required this.title,
  });

  final String imagePath;
  final String title;
  final void Function() function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: ListTile(
        leading: SvgPicture.asset(
          'assets/SVGs/$imagePath',
          colorFilter: const ColorFilter.mode(
              Color.fromARGB(255, 1, 97, 254), BlendMode.srcIn),
        ),
        title: Text(
          title,
          style: GoogleFonts.raleway(
              fontSize: 14, color: Color.fromARGB(255, 1, 97, 254)),
        ),
      ),
    );
  }
}
