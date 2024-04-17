import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text("Most Popular",
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
                    height: MediaQuery.of(context).size.height-100,
                    margin: const EdgeInsets.all(10.0),
                    // color: Colors.amber[600],
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      children: <Widget>[
                        for (var i = 0; i < 5; i++) ...[
                        SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 300,
                            child: Stack(
                              children: <Widget>[
                                Card(
                                  color: Colors.white,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          width: MediaQuery.of(context).size.width,
                                          height: 210,
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
                    )),
              ]))),
    );
  }
}
