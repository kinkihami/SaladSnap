import 'package:flutter/material.dart';
import 'package:ui_desinging/screens/onBoarding.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    loading();
    super.initState();
  }

  loading() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (ctx) => const ScreenOnboard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}
