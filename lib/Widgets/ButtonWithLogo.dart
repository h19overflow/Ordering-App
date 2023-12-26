import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWithLogo extends StatelessWidget {
  const ButtonWithLogo(
      {required this.text,
      required this.imagePath,
      required this.function,
      super.key});

  final void Function() function;
  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(

      splashColor: Colors.blue.shade50,
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.blueAccent)),
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 30),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                height: 30,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                text,
                style: GoogleFonts.raleway(
                    fontSize: 15, color: const Color.fromARGB(255, 1, 97, 254)),
              )
            ]),
      ),
    );
  }
}
