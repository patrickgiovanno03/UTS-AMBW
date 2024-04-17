import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = "Click";
  int indexNow = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My First App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
          backgroundColor: Colors.indigoAccent,
        ),
        body: Center(
          child: SizedBox(
            width: double.infinity,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
            onPressed: () {
              // debugPrint(buttonName);
              setState(() {
                if (buttonName == "Click") {
                  buttonName = "Clicked";
                } else {
                  buttonName = "Click";
                }
              });
            }, child: Text(buttonName)),
            ElevatedButton(
            onPressed: () {
              // debugPrint(buttonName);
              setState(() {
                if (buttonName == "Click") {
                  buttonName = "Clicked";
                } else {
                  buttonName = "Click";
                }
              });
            }, child: Text(buttonName))
            ],)
          )
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.deepOrangeAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          currentIndex: indexNow,
          onTap: (int index) {
            setState(() {
              indexNow = index;
            });
            // debugPrint(index.toString());
          },

        )
      ),
    );
  }
}
