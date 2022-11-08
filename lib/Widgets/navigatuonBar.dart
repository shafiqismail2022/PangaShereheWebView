import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pangasherehe/accounts.dart';
import 'package:pangasherehe/categories.dart';
import 'package:pangasherehe/home.dart';
import '../event.dart';
import '../vendors.dart';

class Navigationbar extends StatefulWidget {
  @override
  // ignore: no_logic_in_create_state
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  int index = 0;
  List Screens = [
    MyHomePage(),
    AccountPage(),
    CategoriesPage(),
    EventPage(),
    VendorPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
          height: 60,
          indicatorColor: Colors.redAccent,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          )),
      child: NavigationBar(
        animationDuration: Duration(seconds: 3),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: index,
        onDestinationSelected: (index) {
          setState(() {
            this.index = index;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.people),
            label: 'Accounts',
          ),
          NavigationDestination(
              icon: Icon(Icons.category), label: 'Categories'),
          NavigationDestination(icon: Icon(Icons.event), label: "Events"),
          NavigationDestination(icon: Icon(Icons.sell), label: "Vendors"),
        ],
      ),
    );
  }
}
