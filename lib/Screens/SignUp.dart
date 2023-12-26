import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutronutro/Screens/OTPPage.dart';
import 'package:nutronutro/Widgets/BigActionButton.dart';
import 'package:nutronutro/Widgets/SignUpTextField.dart';
import 'package:nutronutro/Widgets/TextField.dart';
import 'package:nutronutro/Widgets/Title.dart';
import 'package:password_strength_checker/password_strength_checker.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController lastNameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool checkPasswords() {
      if (passwordController.text == confirmPasswordController.text &&
          passwordController.text.length > 5) {
        return true;
      } else {
        return false;
      }
    }

    Future<bool?> checkInputs(BuildContext context) async {
      if (firstNameController.text.length < 5 &&
          lastNameController.text.length < 5 &&
          checkPasswords()) {
        return true;
      } else {
        return await showDialog<bool>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Inputs Error'),
              content: Text(
                style: GoogleFonts.raleway(
                  fontSize: 15,
                ),
                'Please ensure that your first name and last name have at least 5 characters, and the passwords match and have a minimum length of 6 characters.',
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(
                        false); // Return false when the user presses the button.
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }

    final List<String> instructions = PasswordStrength.instructions.split('\n');
    final passNotifier = ValueNotifier<PasswordStrength?>(null);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 252, 255),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 150, right: 150, top: 50),
                  child: Image.asset(
                    'assets/Logo.png',
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 45,
              ),
              const MainTitle(size: 20, text: 'Sign up'),
              const SizedBox(
                height: 30,
              ),
              Container(
                  margin: const EdgeInsets.only(right: 150),
                  child: const MainTitle(
                    size: 20,
                    text: 'Create Your Account',
                  )),
              const SizedBox(
                height: 15,
              ),
              Container(
                  padding: const EdgeInsets.only(right: 260),
                  child: const MainTitle(size: 14, text: 'First Name')),
              Container(
                padding: const EdgeInsets.only(left: 0),
                child: CustomTextField(
                    decorationText: 'Enter your First Name',
                    controller: firstNameController),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.only(right: 260),
                  child: const MainTitle(size: 14, text: 'Last Name')),
              Container(
                padding: const EdgeInsets.only(left: 0),
                child: CustomTextField(
                    decorationText: 'Enter your Last Name',
                    controller: lastNameController),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.only(right: 292),
                  child: const MainTitle(size: 14, text: 'Email ')),
              Container(
                padding: const EdgeInsets.only(left: 0),
                child: CustomTextField(
                    decorationText: 'Enter your Email',
                    controller: emailController),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.only(right: 227),
                  child: const MainTitle(size: 14, text: 'Mobile Number')),
              Container(
                padding: const EdgeInsets.only(left: 0),
                child: CustomTextField(
                    decorationText: 'Enter Your Phone Mobile Number',
                    controller: phoneNumberController),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.only(right: 267),
                  child: const MainTitle(size: 14, text: 'Password ')),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: SignUpTextFieldPassword(Icons.remove_red_eye_rounded,
                    controller: passwordController, onChanged: (p0) {
                  passNotifier.value = PasswordStrength.calculate(text: p0);
                },
                    marginListLRTB: const [23, 24, 0, 10],
                    suffixIconEnabled: true,
                    paddingLeft: 0,
                    text: 'Confirm Your Password',
                    width: double.infinity,
                    height: 35,
                    borderRadius: 5,
                    backgroundColor: Colors.white,
                    fontSize: 14),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.only(right: 212),
                  child: const MainTitle(size: 14, text: 'Confirm Password')),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: SignUpTextFieldPassword(Icons.remove_red_eye_rounded,
                    controller: confirmPasswordController,
                    onChanged: (p0) {},
                    marginListLRTB: const [24, 24, 0, 24],
                    suffixIconEnabled: true,
                    paddingLeft: 0,
                    text: 'Confirm Your Password',
                    width: double.infinity,
                    height: 35,
                    borderRadius: 5,
                    backgroundColor: Colors.white,
                    fontSize: 14),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(right: 210, bottom: 10),
                child: const MainTitle(size: 12, text: 'Password Strength: '),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: PasswordStrengthChecker(
                  configuration: const PasswordStrengthCheckerConfiguration(
                      statusWidgetAlignment: MainAxisAlignment.start,
                      borderColor: Colors.transparent,
                      height: 10),
                  strength: passNotifier,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 0),
                height: 150,
                width: 350,
                child: ListView.builder(
                  itemCount: instructions.length,
                  itemBuilder: (context, index) =>
                      Instruction(instruction: instructions[index]),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: BigActionButton(
                    text: 'Sign Up',
                    color: const Color.fromARGB(255, 1, 97, 254),
                    borderRadius: 10,
                    function: () {

                      Get.to(const OTPPage());
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Instruction extends StatelessWidget {
  const Instruction({super.key, required this.instruction});

  final String instruction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check,
          color: Color.fromARGB(74, 72, 255, 0),
        ),
        Text(
          instruction,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey,fontSize: 12),
        )
      ],
    );
  }
}
