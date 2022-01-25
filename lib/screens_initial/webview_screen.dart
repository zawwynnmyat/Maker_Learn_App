import 'package:flutter/material.dart';
import 'package:maker_learn/models/makerlearn_pages.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  // TODO: WebViewScreen MaterialPage Helper

  static MaterialPage page() {
    return MaterialPage(
      name: MakerLearnPages.hexadev,
      key: ValueKey(MakerLearnPages.hexadev),
        child: const WebViewScreen()
    );
  }
  const WebViewScreen({Key key}) : super(key: key);

  @override
  WebViewScreenState createState() => WebViewScreenState();
}

class WebViewScreenState extends State<WebViewScreen> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hexa Dev', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple,
      ),
      body: const WebView(
        initialUrl: 'https://github.com/zawwynnmyat',
      ),
    );
  }
}
