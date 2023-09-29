import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Widget_Screens.dart';
import 'package:flutter_application_1/views/cuperation.dart';

class CupertinoTab1 extends StatefulWidget {
  const CupertinoTab1({super.key});

  @override
  State<CupertinoTab1> createState() => _CupertinoTab1State();
}

class _CupertinoTab1State extends State<CupertinoTab1> {
  List screen = [
    WidgetScreen(),
    CupertionWidgets(),
    WidgetScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return screen[index ];
          },
        );
      },
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              label: "Books"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
              ),
              label: "star"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              label: "Books")
        ],
      ),
    );
  }
}
