import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigActionButton extends StatelessWidget {
  const BigActionButton(
      {required this.text,
      required this.color,
      required this.borderRadius,
      required this.function,
      super.key});

  final String text;
  final double borderRadius;
  final void Function() function;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 10,

      onTap: () {
        print('object');
      },
      splashColor: Colors.black12,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            color: color),
        padding: const EdgeInsets.symmetric(horizontal: 57, vertical: 4),
        child: TextButton(
            onPressed: function,
            child: Text(
              text,
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.normal,
                  color: CupertinoColors.white,
                  fontSize: 18),
            )),
      ),
    );
  }
}
