import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  final int category;

  Page2(int i, {Key? key, required this.category}) : super(key: key);
  // const Page2(var tes, {super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
  var popular0 = ['4', '5', '6', '7', '8', '13'];
  var popular1 = [
    "Pizza Hut",
    "Rumah Padang",
    "Meal Break",
    "Maison Feerie",
    "E&W Burger",
    "Bentoya",
  ];
  var popular2 = [
    "Jemursari",
    "Wiyung",
    "Kantin Q",
    "Graha Family",
    "Citraland",
    "Pakuwon Mall"
  ];
  var deal0 = ['9', '10', '11', '12', '13', '4'];
  var deal1 = [
    "French Fries",
    "Bento Kit",
    "Bento Set",
    "Duo Drink",
    "Kid's Bento",
    "Pizza Set"
  ];
  var deal2 = [
    'Rp 20.000',
    'Rp 100.000',
    'Rp 50.000',
    'Rp 40.000',
    'Rp 20.000',
    'Rp 200.000'
  ];
    var selected0;
    var selected1;
    var selected2;
    var textTitle;
    if (widget.category == 1) {
      selected0 = deal0;
      selected1 = deal1;
      selected2 = deal2;
      textTitle = "Meal Deals";
    } else {
      selected0 = popular0;
      selected1 = popular1;
      selected2 = popular2;
      textTitle = "Most Popular";
    }
    return MaterialApp(
      title: "Yuk Makan", 
      theme: ThemeData(fontFamily: 'Lexend'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () => DefaultTabController.of(context).animateTo(1)),
            title: Text("$textTitle",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            centerTitle: true,
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                Container(
                    height: MediaQuery.of(context).size.height - (MediaQuery.of(context).size.height*0.2),
                    margin: const EdgeInsets.all(10.0),
                    // color: Colors.amber[600],
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      children: <Widget>[
                        for (var i = 0; i < selected0.length; i++) ...[
                          Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width *
                                  ((MediaQuery.of(context).size.width < 750)
                                      ? 0
                                      : 0.2),
                              right: MediaQuery.of(context).size.width *
                                  ((MediaQuery.of(context).size.width < 750)
                                      ? 0
                                      : 0.2),
                            ),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: ((MediaQuery.of(context).size.width < 750)
                                  ? 300
                                  : 600),
                              child: Stack(
                                children: <Widget>[
                                  Card(
                                    color: Colors.white,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: ((MediaQuery.of(context)
                                                        .size
                                                        .width <
                                                    750)
                                                ? 210
                                                : 510),
                                            child: Image.asset(
                                                'assets/' +
                                                    selected0[i] +
                                                    '.jpg',
                                                fit: BoxFit.cover)),
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 4,
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
                                          Text(selected1[i],
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 40, 40, 40),
                                                  fontWeight: FontWeight.bold)),
                                          Text(selected2[i],
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
                          )
                        ],
                      ],
                    )),
              ]))),
    );
  }
}
