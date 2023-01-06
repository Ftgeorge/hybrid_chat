// ignore_for_file: file_names

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:raven/Menu/Menu.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 2;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [Menu()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.camera,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.user,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.messageCircle,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.bell,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              EvaIcons.menu2Outline,
              size: 30,
            ),
            label: "",
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          fontSize: 1,
          fontFamily: 'Oxygen',
        ),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemClicked,
      ),
    );
  }
}
