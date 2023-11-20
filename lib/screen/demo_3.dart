import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Demo3 extends StatefulWidget {
  const Demo3({super.key});

  @override
  State<Demo3> createState() => _Demo3State();
}

class _Demo3State extends State<Demo3> {
  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  
  ..loadRequest(Uri.parse('https://flutter.dev'));
  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: controller);
  }
}