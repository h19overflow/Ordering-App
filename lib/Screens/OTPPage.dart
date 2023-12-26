import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutronutro/Screens/EmailForgotPassword.dart';
import 'package:nutronutro/Widgets/BigActionButton.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 80,
        title: Text('Forgot Password',
            textAlign: TextAlign.center,
            style:
                GoogleFonts.raleway(fontSize: 17, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
      ),
      body: Container(
          margin: const EdgeInsets.only(
            top: 70,
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/Images/IOS2.png',
                    height: 60,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'OTP Verification',
                    style: GoogleFonts.raleway(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 88, 255)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'OTP Sent to ',
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                        const TextSpan(
                            text: '+60 11 230 49307',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 88, 255),
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  OtpTextField(
                    margin: const EdgeInsets.all(5),
                    showFieldAsBox: true,
                    borderColor: Colors.grey,
                    fillColor: Colors.white,
                    numberOfFields: 6,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: BigActionButton(
                        text: 'Verify OTP',
                        color: const Color.fromARGB(255, 1, 97, 254),
                        borderRadius: 5,
                        function: () {}),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Didn\'t receive the code?',
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                        const TextSpan(text: '  '),
                        TextSpan(
                            text: 'Resend',
                            style: GoogleFonts.raleway(
                                color: const Color.fromARGB(255, 0, 88, 255),
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()..onTap = () {}),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            height: 50,
                          ),
                        ),
                        Text(
                          'Or Verify with',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Expanded(
                          child: Divider(
                            height: 50,
                          ),
                        )
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'By Using',
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                        const TextSpan(text: '  '),
                        TextSpan(
                            text: 'Email',
                            style: GoogleFonts.raleway(
                                color: const Color.fromARGB(255, 0, 88, 255),
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(EmailForgotScreen());
                              }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
