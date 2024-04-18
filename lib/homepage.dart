import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
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
                  Page2(
                    1,
                    category: 1,
                  ),
                  Page1(),
                  Page2(
                    2,
                    category: 2,
                  ),
                  Scaffold(
                    appBar: AppBar(
                      title: Text("Notifications",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      centerTitle: true,
                    ),
                    body: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Card(
                            child: ListTile(
                              leading: Icon(Icons.notifications_sharp),
                              title: Text('Notification 1'),
                              subtitle: Text('This is a notification'),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              leading: Icon(Icons.notifications_sharp),
                              title: Text('Notification 2'),
                              subtitle: Text('This is a notification'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Scaffold(
                      appBar: AppBar(
                        title: Text("Mesaages",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        centerTitle: true,
                      ),
                      body: Padding(
                        padding: EdgeInsets.only(
                            bottom: 8.0,
                            top: 8.0,
                            left: ((MediaQuery.of(context).size.width < 750)
                                ? 8
                                : 200),
                            right: ((MediaQuery.of(context).size.width < 750)
                                ? 8
                                : 200)),
                        child: ListView.builder(
                          reverse: true,
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                            if (index == 0) {
                              return Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  margin: const EdgeInsets.all(8.0),
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Text(
                                    'Hello!',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              );
                            }
                            return Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: const EdgeInsets.all(8.0),
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Text(
                                  'Hi!',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            );
                          },
                        ),
                      )),
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
                Tab(
                  icon: Icon(
                    Icons.notifications,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.forum,
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
