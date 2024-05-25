import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_desinging/contants.dart';
import 'package:ui_desinging/screens/basket.dart';

class ScreenProduct extends StatelessWidget {
  const ScreenProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 20, bottom: 15, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: lightshadeColor,
              child: Icon(
                Icons.favorite_border,
                color: appBackgroundColor,
                size: 25,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => ScreenBasket())),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: appBackgroundColor,
                ),
                child: Text(
                  'Add to Basket',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 18,
              ),
              Text(
                'Go Back',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: appBackgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Image.asset(
            'assets/images/dish4.png',
            scale: 2,
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Honey lime combo',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: lightshadeColor,
                            radius: 14,
                            child: Icon(
                              Icons.remove,
                              size: 19,
                              color: appBackgroundColor,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text('1000'),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundColor: lightshadeColor,
                            radius: 14,
                            child: Icon(
                              Icons.add,
                              size: 19,
                              color: appBackgroundColor,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '1500.0/-',
                        style: TextStyle(
                            color: Colors.deepOrangeAccent[700],
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make')
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
