import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutronutro/Widgets/BigActionButton.dart';
import 'package:nutronutro/Widgets/TextField.dart';
import 'package:nutronutro/Widgets/Title.dart';

class EmailForgotScreen extends StatelessWidget {
  EmailForgotScreen({super.key});

  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          titleSpacing: 80,
          title: const MainTitle(size: 17, text: 'Forgot Email')),
      body: Container(
        margin: const EdgeInsets.only(top: 0, left: 0, right: 0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/Images/EmailLocked.png',
              height: 70,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Submit your email address and we will send you link to reset your password',
                style: GoogleFonts.raleway(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                margin: const EdgeInsets.only(right: 300),
                child: const MainTitle(size: 15, text: 'Email')),
            const SizedBox(
              height: 2,
            ),
            CustomTextField(
                decorationText: 'Enter your Email', controller: email),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: BigActionButton(
                text: 'Verify  Email',
                color: const Color.fromARGB(255, 1, 97, 254),
                borderRadius: 5,
                function: () {},
              ),
            ),
            SizedBox(height: 30,),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Didn\'t receive the code',
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                  const TextSpan(text: '  '),
                  TextSpan(
                      text: 'Resend',
                      style: GoogleFonts.raleway(
                          color: const Color.fromARGB(255, 0, 88, 255),
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {

                        })
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
