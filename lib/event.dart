import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pangasherehe/Widgets/navigatuonBar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EventPage extends StatefulWidget {
  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https://pangasherehe.com/live-event-tiketi',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      bottomNavigationBar: Navigationbar(),
    );
  }
}
