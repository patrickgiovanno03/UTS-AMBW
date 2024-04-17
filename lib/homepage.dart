import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        
        // appBar: AppBar(
        //   title: const Text("APP BAR"),
        // ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  Page2(1, category: 1,),
                  Page1(),
                  Page2(2, category: 2,),
                ],
              ),
            ),
            TabBar(
              indicatorColor: Color.fromARGB(255, 255, 200, 54),
  labelColor: Color.fromARGB(255, 255, 200, 54),
  unselectedLabelColor: Color.fromARGB(255, 238, 238, 238),
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.attach_money,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.home,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.local_fire_department,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
