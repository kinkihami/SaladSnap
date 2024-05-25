import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_desinging/contants.dart';
import 'package:ui_desinging/screens/login.dart';

class ScreenOnboard extends StatelessWidget {
  const ScreenOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Container(
              color: appBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/images/miniimage.png',
                        height: 50,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/initialpageimg.png',
                          height: 250,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Image.asset(
                            'assets/images/ellipse1.png',
                            height: 60,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 300,
            color: Colors.white,
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 60),
            child: Column(
              children: [
                const Text(
                  'Get The Freshest Fruit Salad Combo',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black),
                ),
                const Spacer(),
                const Text(
                  'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
                const Spacer(
                  flex: 2,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      fixedSize: const MaterialStatePropertyAll(
                          Size(double.maxFinite, 60)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                      backgroundColor:
                          const MaterialStatePropertyAll(appBackgroundColor)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const ScreenLogin()));
                  },
                  child: const Text(
                    "Let's Continue",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
