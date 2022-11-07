import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var screens = [
    WebView(
      initialUrl: 'https://pangasherehe.com',
    ),
    WebView(
      initialUrl: 'https://pangasherehe.com/client_area',
    ),
    WebView(
      initialUrl: 'https://pangasherehe.com/get-merchant-category',
    ),
    WebView(
      initialUrl: 'https://pangasherehe.com/live-event-tiketi',
    ),
    WebView(
      initialUrl: 'https://pangasherehe.com/merchants',
    ),
  ];
  int index = 0;
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
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
      ),
    );
  }
}
