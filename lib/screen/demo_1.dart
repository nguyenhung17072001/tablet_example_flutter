import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Demo1 extends StatefulWidget {
  const Demo1({super.key});

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  
  ..loadRequest(Uri.parse('https://flutter.dev'));
  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: controller);
  }
}