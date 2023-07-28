import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;


class DeteksiPage extends StatefulWidget {
  @override
  _DeteksiPageState createState() => _DeteksiPageState();
}

class _DeteksiPageState extends State<DeteksiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deteksi'),
      ),
      body: WebView(
        initialUrl: 'http://192.168.82.136:5000/deteksi', // Replace with your server URL
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

