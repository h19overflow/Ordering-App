import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpTextField extends StatelessWidget {
  SignUpTextField({
    required this.controller,
    required this.text,
    required this.width,
    required this.iconData,
    required this.backgroundColor,
    super.key,
  });

  final TextEditingController controller;
  final String text;
  final double width;
  final IconData iconData;
  bool isPressed = false;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 30,
      decoration: ShapeDecoration(
        shadows: [
          BoxShadow(
              color: Colors.grey.shade100,
              offset: const Offset(1, 1),
              blurStyle: BlurStyle.outer)
        ],
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey.shade300, width: .5),
          borderRadius: BorderRadius.circular(75),
        ),
      ),
      child: TextField(
        controller: controller,
        obscureText: isPressed,
        maxLines: 1,
        style: GoogleFonts.raleway(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(bottom: 11),
          prefixIcon: Icon(
            iconData,
            color: Colors.black12,
          ),
          suffixIconConstraints: BoxConstraints.loose(const Size(15, 30)),
          border: InputBorder.none,
          hintText: text,
        ),
      ),
    );
  }
}

class SignUpTextFieldPassword extends StatefulWidget {
  const SignUpTextFieldPassword(this.suffixIcon,
      {required this.controller,
      required this.marginListLRTB,
      required this.suffixIconEnabled,
      required this.paddingLeft,
      required this.text,
      required this.width,
      required this.height,
      required this.borderRadius,
      required this.backgroundColor,
      required this.fontSize,
      required this.onChanged,
      super.key});

  final double borderRadius;
  final double height;
  final void Function(String) onChanged;
  final Color backgroundColor;
  final double fontSize;
  final bool suffixIconEnabled;
  final TextEditingController controller;
  final IconData suffixIcon;
  final String text;
  final double width;
  final double paddingLeft;
  final List<double> marginListLRTB;

  @override
  _SignUpTextFiledPassword createState() => _SignUpTextFiledPassword();
}

class _SignUpTextFiledPassword extends State<SignUpTextFieldPassword> {
  bool isPressed = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
          border: Border.symmetric(
              vertical: BorderSide(color: Colors.grey, width: .5),
              horizontal: BorderSide(color: Colors.grey, width: .5)),
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.white70),
      child: TextField(
        style: GoogleFonts.raleway(
          color: Colors.black,
          fontSize: widget.fontSize,
          fontWeight: FontWeight.w400,
        ),
        controller: widget.controller,
        obscureText: isPressed,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 5, left: 10),
            border: InputBorder.none,
            hintText: widget.text,
            hintStyle: GoogleFonts.raleway(
                color: Colors.black26,
                fontSize: 14,
                fontWeight: FontWeight.w600),
            suffixIcon: IconButton(
              padding: const EdgeInsets.only(bottom: 2),
              icon: Icon(
                Icons.remove_red_eye_rounded,
                color: !isPressed ? Colors.blue : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  isPressed = !isPressed;
                });
              },
            )),
      ),
    );
  }
}
