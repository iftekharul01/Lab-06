import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final List<Widget> pages = [
    Container(
      color: Colors.red.shade100,
      height: double.infinity,
      alignment: Alignment.center,
      child: Text("Home"),
    ),
    Container(
      color: Colors.red.shade400,
      height: double.infinity,
      alignment: Alignment.center,
      child: Text("Profile"),
    ),
    Container(
      color: Colors.pink.shade400,
      height: double.infinity,
      alignment: Alignment.center,
      child: Text("Settings"),
    ),
  ];

  void onClickMenu(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onClickMenu,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.search_outlined),
          //   label: "Search",
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
