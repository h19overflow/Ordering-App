import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {required this.decorationText, required this.controller, super.key});

  final String decorationText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 40,
      decoration: const BoxDecoration(
          border: Border.symmetric(
              vertical: BorderSide(color: Colors.grey, width: .5),
              horizontal: BorderSide(color: Colors.grey, width: .5)),
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.white70),
      child: TextField(
        style: GoogleFonts.raleway(decoration:TextDecoration.none,),
        controller: controller,

        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          prefix: const SizedBox(

            width: 10,
          ),
          hintText: decorationText,

          hintStyle: const TextStyle(
              color: Colors.black26, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}