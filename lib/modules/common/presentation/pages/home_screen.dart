import 'package:classroom_assignment/modules/class_rooms/presentation/pages/class_room_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;
  final List<Widget> _widgetOptions = <Widget>[
    Container(),
    const ClassRoomPage(),
    Container()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: '',
              icon: const Icon(Icons.subject_outlined),
              backgroundColor: Theme.of(context).primaryColor),
          BottomNavigationBarItem(
              label: '',
              icon: const Icon(Icons.class_),
              backgroundColor: Theme.of(context).primaryColor),
          BottomNavigationBarItem(
            label: '',
            icon: const Icon(Icons.group_outlined),
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
