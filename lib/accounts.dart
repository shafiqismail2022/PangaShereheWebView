import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'Widgets/NavigatuonBar.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https://pangasherehe.com/client_area',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      // bottomNavigationBar: Navigationbar()
    );
  }
}
