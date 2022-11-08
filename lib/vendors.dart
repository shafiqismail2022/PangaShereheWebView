import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'Widgets/NavigatuonBar.dart';

class VendorPage extends StatelessWidget {
  const VendorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
          initialUrl: 'https://pangasherehe.com/merchants',
          javascriptMode: JavascriptMode.unrestricted,
        ),
        bottomNavigationBar: Navigationbar());
  }
}
