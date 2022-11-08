import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pangasherehe/event.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../Widgets/navigatuonbar.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https://pangasherehe.com',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      bottomNavigationBar: Navigationbar(),
    );
  }
}
