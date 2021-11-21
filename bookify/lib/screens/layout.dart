import 'package:bookify/screens/cam.dart';
import 'package:bookify/screens/fullBooking.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import 'home.dart';
import 'map.dart';

class Layout extends StatefulWidget {
  const Layout({Key key, this.cameras}) : super(key: key);

  final List<CameraDescription> cameras;

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {

  int _selectedIndex = 1;

  List<Widget> _children;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {

    super.initState();

    _children = <Widget>[
    Map(),
    Home(),
    CamScreen(cameras: widget.cameras),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClickBookGo"),
      ),
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "Map",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: "Scan",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.event_available,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => FullBooking(name: "O4-R1-P5",)));
          }),
    );
  }
}
