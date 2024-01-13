import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:information/screen/drawer.dart';
import 'package:information/screen/index.dart';

import 'last_screen/info.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[const Index(), const Info()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informatika',style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0xff500354),
        elevation: 0.0,
        actions: const [
          SizedBox(
            width: 15.0,
          ),
          Icon(Icons.notifications_none,color: Colors.white,),
          SizedBox(
            width: 10.0,
          )
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      drawer: const MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xfff39060),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 30.0,), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.info), label: "Info")
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
