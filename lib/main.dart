import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:good_project/homepage/slice_home.dart';
import 'package:good_project/settingspage/settings_home.dart';
import 'package:good_project/sparkpage/spark_home.dart';

import 'cashpage/cashpage_home.dart';

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final List<Widget> _screens = [
    SliceHomeClone(),
    SparkHome(),
    CashPageHome(),
    SettingsHome(),
  ];
  int _pageIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onTap(index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: _screens,
        onPageChanged: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: _onTap,
        elevation: 0,
        enableFeedback: true,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedIconTheme: IconThemeData(color: Colors.black87, size: 34),
        unselectedIconTheme: IconThemeData(color: Colors.black45, size: 34),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home",
              tooltip: "A Basic Home Page"),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_basketball_outlined),
              activeIcon: Icon(Icons.sports_basketball_rounded),
              label: "Settings",
              tooltip: "Want to mess with State management"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_pizza_outlined),
              activeIcon: Icon(Icons.local_pizza_rounded),
              label: "Unloved Icon",
              tooltip: "IdK What to Put here lel"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: "Settings",
              tooltip: "Want to mess with State management"),
        ],
      ),
    );
  }
}
