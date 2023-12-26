import 'package:animate_do/animate_do.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutronutro/Screens/CustomerMainSCreen.dart';
import 'package:nutronutro/Screens/OTPPage.dart';
import 'package:nutronutro/Screens/SignUp.dart';
import 'package:nutronutro/Widgets/BigActionButton.dart';
import 'package:nutronutro/Widgets/ButtonWithLogo.dart';
import 'package:nutronutro/Widgets/TextField.dart';
import 'package:nutronutro/Widgets/Title.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isChecked = false;

  bool setIsChecked() {
    setState(() {
      isChecked = true;
    });
    return isChecked;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordControlller = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 252, 255),
      body: Center(
        child: SingleChildScrollView(
          child: FadeInUp(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin:
                        const EdgeInsets.only(left: 130, right: 130, top: 50),
                    child: Image.asset(
                      'assets/Logo.png',
                      fit: BoxFit.cover,
                    )),
                const Padding(padding: EdgeInsets.all(20)),
                const MainTitle(
                  text: 'Email Sign In',
                  size: 17,
                ),
                const SizedBox(
                  height: 47,
                ),
                const SizedBox(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 26,
                      ),
                      MainTitle(
                        text: 'Email',
                        size: 14,
                      ),
                    ],
                  ),
                ),
                CustomTextField(
                    decorationText: 'Enter your Email',
                    controller: emailController),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 26,
                      ),
                      MainTitle(
                        text: 'Password',
                        size: 14,
                      ),
                    ],
                  ),
                ),
                CustomTextField(
                    decorationText: 'Enter Your Password',
                    controller: passwordControlller),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      side: const BorderSide(color: Colors.grey),
                      value: isChecked,
                      onChanged: (value) => setIsChecked,
                    ),
                    Text(
                      'Remember Me',
                      style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 99,
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(const OTPPage());
                        },
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.raleway(
                              color: const Color.fromARGB(255, 1, 97, 254)),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: BigActionButton(
                      text: 'Sign In',
                      color: const Color.fromARGB(255, 1, 97, 254),
                      borderRadius: 10,
                      function: () {
                        Get.offAll(CustomerMainPage());
                      }),
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
                        'Or Continue with',
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
                const SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: ButtonWithLogo(
                    text: 'Sign in with Google',
                    imagePath: 'assets/img.png',
                    function: () {},
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: ButtonWithLogo(
                      text: 'Sign in with Facebook',
                      imagePath: 'assets/img_1.png',
                      function: () {}),
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: ButtonWithLogo(
                      text: 'Sign in with Apple',
                      imagePath: 'assets/img_2.png',
                      function: () {}),
                ),
                const SizedBox(
                  height: 18,
                ),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.raleway(fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Don\'t have an account? ',
                          style: GoogleFonts.raleway(color: Colors.black)),
                      TextSpan(
                          text: 'Sign up',
                          style: GoogleFonts.raleway(
                              color: const Color.fromARGB(255, 1, 97, 254),
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.to(SignUpPage());
                            }),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
