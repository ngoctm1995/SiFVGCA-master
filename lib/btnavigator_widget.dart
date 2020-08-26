import 'package:flutter/material.dart';

import 'sign_widget.dart';

class BottomNavigator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigatorState();
  }
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _currentIndex = 0;
  String _title = 'DEMO VGCA';

  final List<Widget> _children = [
    SignWidget(),
    SignWidget(),
    SignWidget(),
  ];

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(_title),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.mode_edit),
            title: new Text('Sign'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.person_pin),
            title: new Text('Profile'),
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'Trang chủ';
          }
          break;
        case 1:
          {
            _title = 'Ký số';
          }
          break;
        case 2:
          {
            _title = 'Cá nhân';
          }
          break;
      }
    });
  }
}
