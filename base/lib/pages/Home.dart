import 'package:base/tabs/Mail.dart';
import 'package:base/tabs/Map.dart';
import 'package:base/tabs/Schedule.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size(50.0, 10.0),
            child: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.calendar_today)),
                Tab(icon: Icon(Icons.map)),
                Tab(icon: Icon(Icons.mail)),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ScheduleTab(),
            MapTab(),
            MailTab(),
          ],
        ),
      ),
    );
  }
}
