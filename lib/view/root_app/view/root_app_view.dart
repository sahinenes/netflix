import 'package:flutter/material.dart';
import '../../../product/uitlity/root_app_icons.dart';
import '../../../product/widgets/helper.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  int selectedIndex = 0;
  void onChange(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        backgroundColor: Colors.black,
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        unselectedItemColor: Colors.white,
        selectedItemColor: const Color(0xffcc2b5e),
        selectedIconTheme: const IconThemeData(
          color: Color(0xffcc2b5e),
        ),
        selectedLabelStyle: const TextStyle(color: Color(0xffcc2b5e)),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              items[0]["icon"],
            ),
            label: items[0]["text"],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              items[1]["icon"],
            ),
            label: items[1]["text"],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              items[2]["icon"],
            ),
            label: items[2]["text"],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              items[3]["icon"],
            ),
            label: items[3]["text"],
          )
        ],
        onTap: (value) {
          onChange(value);
        },
      ),
    );
  }
}
