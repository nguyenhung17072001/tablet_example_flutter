import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Demo2 extends StatefulWidget {
  const Demo2({super.key});

  @override
  State<Demo2> createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {
  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadHtmlString('<html><body><h1>Hello, Flutter!</h1></body></html>');
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Htnl View'),
      ),
      body: SafeArea(
        child: WebViewWidget(controller: controller),
      ),
    );
  }
}