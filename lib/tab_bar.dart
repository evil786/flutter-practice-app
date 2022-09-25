import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('TabBar Widget')),
          bottom: const TabBar(
            indicator: BoxDecoration(
              color: Colors.green,
            ),
            tabs: [
              Tab(
                text:('Home'),
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              Tab(
                text:('Notification'),
                icon: Icon(Icons.notification_important, color: Colors.black),
              ),
              Tab(
                text: ('Alarm'),
                icon: Icon(Icons.access_alarm, color: Colors.black),
              ),
              Tab(
                text: ('Setting'),
                icon: Icon(Icons.settings, color: Colors.black),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("Home Page"),
            ),
            Center(
              child: Text("Notification"),
            ),
            Center(
              child: Text("Set Alarm"),
            )  ,
            Center(
              child: Text("Setting"),
            ),
          ],
        ),
      ),
    );
  }
}
