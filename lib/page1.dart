import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var carousel0 = ['1', '2', '3'];
  var carousel1 = ["Western Style", "Healthy Food", "Junkies"];
  var carousel2 = ['12', '4', '20'];
  var popular0 = ['4', '5', '6', '7', '8'];
  var popular1 = [
    "Pizza Hut",
    "Rumah Makan Sederhana",
    "Meal Break",
    "Maison Feerie",
    "E&W Burger",
  ];
  var popular2 = [
    "Jemursari",
    "Wiyung",
    "Kantin Q",
    "Graha Family",
    "Citraland",
  ];
  var deal0 = ['9', '10', '11', '12', '13'];
  var deal1 = [
    "French Fries",
    "Bento Kit",
    "Bento Set",
    "Duo Drink",
    "Kid's Bento",
  ];
  var deal2 = ['Rp 20.000', 'Rp 100.000', 'Rp 50.000', 'Rp 40.000', 'Rp 20.000'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: new ThemeData(
      // scaffoldBackgroundColor: Color.fromARGB(255, 245, 245, 245)),
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            // backgroundColor: Colors.deepPurple[300],
            centerTitle: true,
            // title: const Text('Yuk Makan',style: TextStyle(fontFamily: 'lexend')),
            title: const Text('Yuk Makan',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  margin: const EdgeInsets.all(10.0),
                  // color: Colors.amber[600],
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      hintText: 'Search for restaurants or foods...',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  // color: Colors.amber[600],
                  width: MediaQuery.of(context).size.width,
                  height: 240.0,
                  child: CarouselSlider(
                    items: [
                      for (var i = 0; i < carousel0.length; i++)  ...[
                        Stack(children: <Widget>[
                        Container(
                            foregroundDecoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(180, 0, 0, 0),
                                  Colors.transparent,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                stops: [0, 0.5],
                              ),
                            ),
                            child: Stack(children: <Widget>[
                              SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                  child: Image.asset('assets/'+carousel0[i]+'.jpg',
                                      fit: BoxFit.cover)),
                            ])),
                        Positioned(
                          bottom: 5,
                          left: 10,
                          child: SizedBox(
                            height: 55,
                            //set padding left
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(carousel1[i],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    )),
                                Text(carousel2[i]+' Places',
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                          ),
                        )
                      ]),
                      ],
                      
                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 240.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 1,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  // color: Colors.amber[600],
                  width: MediaQuery.of(context).size.width,
                  height: 260.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Most Popular',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 25, 25, 25),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {
                              DefaultTabController.of(context).animateTo(0);
                            },
                            child: Text(
                              'See all',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 40, 160, 190),
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                      ]),
                      CarouselSlider(
                        items: [
                          for (var i = 0; i < popular0.length; i++)  ...[
                            SizedBox(
                            width: 335,
                            height: 174,
                            child: Stack(
                              children: <Widget>[
                                Card(
                                  color: Colors.white,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          width: 335,
                                          height: 125,
                                          child: Image.asset('assets/'+popular0[i]+'.jpg',
                                              fit: BoxFit.cover)),
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  elevation: 5,
                                  margin: EdgeInsets.all(10),
                                ),
                                Positioned(
                                  bottom: 5,
                                  left: 20,
                                  child: SizedBox(
                                    height: 65,
                                    //set padding left
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(popular1[i],
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 40, 40, 40),
                                                fontWeight: FontWeight.bold)),
                                        Text(popular2[i],
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 64, 64, 64),
                                                fontSize: 12)),
                                        Text('Junkies',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 64, 64, 64),
                                                fontSize: 10))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          ],
                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                            height: 210.0,
                            aspectRatio: 16 / 9,
                            viewportFraction:
                                600 / MediaQuery.of(context).size.width * 0.4,
                            enableInfiniteScroll: false,
                            padEnds: false),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  // color: Colors.amber[600],
                  width: MediaQuery.of(context).size.width,
                  height: 230.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Meal Deals',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 25, 25, 25),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            'See all',
                            style: TextStyle(
                              color: Color.fromARGB(255, 40, 160, 190),
                              fontSize: 18,
                            ),
                          ),
                        )
                      ]),
                      CarouselSlider(
                        items: [
                          for (var i = 0; i < deal0.length; i++)  ...[
                            SizedBox(
                            width: 335,
                            height: 174,
                            child: Stack(
                              children: <Widget>[
                                Card(
                                  color: Colors.white,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          width: 335,
                                          height: 125,
                                          child: Image.asset('assets/'+deal0[i]+'.jpg',
                                              fit: BoxFit.cover)),
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  elevation: 5,
                                  margin: EdgeInsets.all(10),
                                ),
                                Positioned(
                                  bottom: 5,
                                  left: 20,
                                  child: SizedBox(
                                    height: 50,
                                    //set padding left
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(deal1[i],
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 40, 40, 40),
                                                fontWeight: FontWeight.bold)),
                                        Text(deal2[i],
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 64, 64, 64),
                                                fontSize: 12)),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          ],
                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                            height: 195.0,
                            aspectRatio: 16 / 9,
                            viewportFraction:
                                600 / MediaQuery.of(context).size.width * 0.4,
                            enableInfiniteScroll: false,
                            padEnds: false),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
