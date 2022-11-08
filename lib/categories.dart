import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'Widgets/NavigatuonBar.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
          initialUrl: 'https://pangasherehe.com/get-merchant-category',
          javascriptMode: JavascriptMode.unrestricted,
        ),
        bottomNavigationBar: Navigationbar());
  }
}
