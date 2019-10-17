import 'package:base/util/Router.dart';
import 'package:flutter/material.dart';

class ScheduleTab extends StatefulWidget {
  @override
  _ScheduleTabState createState() => _ScheduleTabState();
}

class _ScheduleTabState extends State<ScheduleTab> with WidgetsBindingObserver {
  int flag;
  @override
  void initState() {
    super.initState();
    flag = 0;
  }

  @override
  void dispose() {
    super.dispose();
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('state = $state');
  }

  Widget defaultView() {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Navigate within the scaffold"),
            onPressed: () {
              currentPage(1);
            },
          ),
          RaisedButton(
            child: Text("Navigate Using named routes"),
            onPressed: () {
              Navigator.pushNamed(context, scheduleDetailsRoute);
            },
          )
        ],
      ),
    );
  }

  Widget viewScheduleDetails() {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: (){
              currentPage(0);
            },
            child: Text("Goback"),
          )
        ],
      ),
    );
  }

  void currentPage(status){
    setState((){
      flag = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: flag == 0 ? defaultView() : viewScheduleDetails(),
    );
  }
}
