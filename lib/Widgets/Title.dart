import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitle extends StatelessWidget {
  const

  MainTitle({required this.size, required this.text, super.key});

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style:
            GoogleFonts.raleway(fontSize: size, fontWeight: FontWeight.w600));
  }
}
