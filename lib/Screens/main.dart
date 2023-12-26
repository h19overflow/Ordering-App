import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:nutronutro/Screens/SignInPage.dart';

import 'CustomerMainSCreen.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return GetMaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home:  const OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
  Get.to(()=> const SignInPage());
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/fullscreen.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 250]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 16.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      titlePadding: EdgeInsets.all(5),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 7000,
      infiniteAutoScroll: false,
      globalHeader: const Align(
        alignment: Alignment.topRight,
      ),

      pages: [
        PageViewModel(
          title: "Order your food with a click",
          body: "From the comfort of your home to your doorstep",
          image: _buildImage('DeliveryGuy.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Keep tabs on your diet",
          body: "Meet your dietary goals easily and track your macros.",
          image: _buildImage('onlineParty.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Delicious Meals await",
          body:
              "From Mexican to Indian, find the perfect recipes to smash your goals",
          image: _buildImage('robotCooking.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Quick & Easy Payments",
          body:
              "Pay for your groceries easily through our online banking system",
          image: _buildImage('teaParty.png'),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      controlsPosition: const Position.fromLTRB(100, 600, 70, 0),
      //rtl: true, // Display as right-to-left

      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: Container(
        padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 72, 220),
              borderRadius: BorderRadiusDirectional.circular(300)),
          child: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
            weight: .5,
          )),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.easeOutQuint,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),

      dotsDecorator: const DotsDecorator(
        spacing: EdgeInsets.all(2),
        size: Size(10.0, 20.0),
        activeColor: Color.fromARGB(255, 0, 72, 220),
        color: Color(0xFFBDBDBD),
        activeSize: Size(45.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}
