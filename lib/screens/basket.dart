import 'package:flutter/material.dart';
import 'package:ui_desinging/contants.dart';
import 'package:ui_desinging/screens/orderplaced.dart';

class ScreenBasket extends StatelessWidget {
  ScreenBasket({super.key});

  List<String> basketImage = [
    'assets/images/dish1.png',
    'assets/images/dish3.png',
    'assets/images/dish2.png',
  ];

  List<String> baskettitle = [
    'Quinoa fruit salad',
    'Tropical fruit salad',
    'Melon fruit salad',
  ];

  List<String> basketprice = [
    'Rs.1500.0/-',
    'Rs.1500.0/-',
    'Rs.1000.0/-',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total'),
                Text(
                  '20000/-',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => ScreenOrder())),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: appBackgroundColor,
                ),
                child: Text(
                  'Checkout',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        backgroundColor: appBackgroundColor,
        title: Text(
          'My Basket',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: basketImage.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              visualDensity: VisualDensity(vertical: 4),
              dense: true,
              leading: Container(
                width: 80,
                height: 80,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepOrange[50],
                ),
                child: Image.asset(
                  basketImage[index],
                  fit: BoxFit.contain,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    baskettitle[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('2 Packs'),
                ],
              ),
              subtitle: Text(
                basketprice[index],
                style: TextStyle(color: appBackgroundColor),
              ),
              trailing: CircleAvatar(
                backgroundColor: lightshadeColor,
                radius: 17,
                child: Icon(
                  Icons.remove,
                  color: appBackgroundColor,
                  size: 15,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
