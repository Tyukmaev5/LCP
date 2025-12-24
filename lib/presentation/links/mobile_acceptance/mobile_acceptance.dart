import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:logilinks/core/configs/configs.dart';

class MobileAcceptance extends StatelessWidget {
  const MobileAcceptance({super.key});

  @override
  Widget build(BuildContext context) {
    return const InAppWebViewMA();
  }
}

class InAppWebViewMA extends StatefulWidget {
  const InAppWebViewMA({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InAppWebViewMAState createState() => _InAppWebViewMAState();
}

class _InAppWebViewMAState extends State<InAppWebViewMA> {
  late InAppWebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: WebUri(Links.mobileAcceptance)),
        onWebViewCreated: (InAppWebViewController controller) {
          _webViewController = controller;
        },
      ),
    );
  }
}
