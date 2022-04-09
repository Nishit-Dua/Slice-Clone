import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: _onTap,
      elevation: 0,
      enableFeedback: true,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(color: Colors.black87, size: 59),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            backgroundColor: Colors.blueGrey,
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
            tooltip: "A Basic Home Page"),
        BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.add_to_photos_outlined),
            activeIcon: Icon(Icons.add_to_photos),
            label: "Unloved Icon",
            tooltip: "IdK What to Put here lel"),
        BottomNavigationBarItem(
            backgroundColor: Colors.deepOrangeAccent,
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: "Settings",
            tooltip: "Want to mess with State management"),
      ],
    );
  }

  void _onTap(index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class CustomBottomNavBarItem extends StatelessWidget {
  const CustomBottomNavBarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
