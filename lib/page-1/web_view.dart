// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class WebviewPage extends StatefulWidget {
//   const WebviewPage({Key? key}) : super(key: key);

//   @override
//   State<WebviewPage> createState() => _WebviewPageState();
// }

// class _WebviewPageState extends State<WebviewPage> {
//   WebViewController? _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int progress) {
//             // Update loading bar.
//           },
//           onPageStarted: (String url) {},
//           onPageFinished: (String url) {},
//           onWebResourceError: (WebResourceError error) {},
//           onNavigationRequest: (NavigationRequest request) {
//             if (request.url.startsWith('http://192.168.99.136:5000/')) {
//               return NavigationDecision.prevent;
//             }
//             return NavigationDecision.navigate;
//           },
//         ),
//       )
//       ..loadRequest(Uri.parse('http://192.168.99.136:5000/detec'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(        
//         body: WebViewWidget(controller: _controller!));
//   }
// }