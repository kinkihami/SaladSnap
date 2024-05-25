import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_desinging/contants.dart';
import 'package:ui_desinging/screens/productDetailed.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  List<String> categoryList = [
    'All',
    'Salad Combo',
    'Berry Combo',
    'Mango Combo',
  ];

  List<String> recommentedimageList = [
    'assets/images/dish4.png',
    'assets/images/dish5.png'
  ];
  List<String> recommentednameList = [
    'Honey lime com...',
    'Berry mango com...',
  ];
  List<String> recommentedpriceList = [
    'Rs.1500.0/-',
    'Rs.1000.0/-',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Welcome, Chris.',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [Image.asset('assets/images/homeaction.png')],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            fillColor: Colors.grey[100],
                            filled: true,
                            hintText: 'Search for fruit salad combo...'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/images/filter.png',
                      height: 70,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryList.length,
                      itemBuilder: (ctx, index) {
                        return Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade300,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            categoryList[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        );
                      }),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Recommended Combo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                width: 80,
                child: Divider(
                  thickness: 2,
                  color: appBackgroundColor,
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: recommentedimageList.length,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const ScreenProduct()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                              left: 10, top: 15, bottom: 15),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 100),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: appBackgroundColor,
                                ),
                              ),
                              Image.asset(
                                recommentedimageList[index],
                                scale: 2.5,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                recommentednameList[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    recommentedpriceList[index],
                                    style: const TextStyle(
                                        color: appBackgroundColor),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: lightshadeColor,
                                    child: Icon(
                                      Icons.add,
                                      color: appBackgroundColor,
                                      size: 17,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    })),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    'Hottest',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Popular',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'New Combo',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                width: 40,
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Divider(
                    thickness: 2,
                    color: appBackgroundColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 5, top: 15, bottom: 15),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: lightshadeColor.withOpacity(0.1),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 100),
                          child: Icon(
                            Icons.favorite_border,
                            color: appBackgroundColor,
                          ),
                        ),
                        Image.asset(
                          'assets/images/dish1.png',
                          scale: 2,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Quinoa fruit salad',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'RS. 1500.0/-',
                              style: const TextStyle(color: appBackgroundColor),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: lightshadeColor,
                              child: Icon(
                                Icons.add,
                                color: appBackgroundColor,
                                size: 17,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.deepOrange[50],
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 100),
                          child: Icon(
                            Icons.favorite_border,
                            color: appBackgroundColor,
                          ),
                        ),
                        Image.asset(
                          'assets/images/dish2.png',
                          scale: 1.5,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Tropical fruit salad',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'RS. 1500.0/-',
                              style: const TextStyle(color: appBackgroundColor),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: lightshadeColor,
                              child: Icon(
                                Icons.add,
                                color: appBackgroundColor,
                                size: 17,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
