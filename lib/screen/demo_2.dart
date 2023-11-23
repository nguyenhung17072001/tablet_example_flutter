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
  ..loadHtmlString('<html><body><header><h1> trang HTML</h1></header><main><p>Đây là một trang HTML cơ bản chứa một tiêu đề, một đoạn văn bản và một hình ảnh.</p><img src="duong-dan-cua-hinh-anh.jpg" alt="Mô tả hình ảnh"></main><footer><p>.</p></footer></body></html>');
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Html View'),
      ),
      body: SafeArea(
        child: WebViewWidget(controller: controller),
      ),
    );
  }
}