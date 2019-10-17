import 'package:base/pages/Home.dart';
import 'package:base/pages/Settings.dart';
import 'package:base/pages/Task.dart';
import 'package:base/util/Router.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPage createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage> with WidgetsBindingObserver {
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state);
  }

  final String pageTitle = "Home";
  int _selectedIndex = 0;

  final List<Map<String, Object>> _pageOptions = [
    {"page": HomePage(), "title": "Home"},
    {"page": TaskPage(), "title": "Tasks"},
    {"page": SettingsPage(), "title": "Settings"}
  ];

  void _onNavigate(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text(_pageOptions[_selectedIndex]["title"]),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          )
        ],
      ),
      drawer: drawerbuilder(),
      body: _pageOptions[_selectedIndex]['page'],
      bottomNavigationBar: bottomNavigationBuilder(),
    );
  }

  Widget drawerbuilder() {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 100.0,
            child: DrawerHeader(
              child: Row(
                children: <Widget>[
                  Container(
                    height: 35.0,
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      "assets/logo.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Welcome Mr. Llevado',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.list),
                Container(
                  padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Logs',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.exit_to_app),
                Container(
                  padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
            onTap: () => Navigator.popAndPushNamed(context, loginRoute),
          ),
        ],
      ),
    );
  }

  Widget bottomNavigationBuilder() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('Tasks'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onNavigate,
    );
  }
}
