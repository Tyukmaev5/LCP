import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:logilinks/core/configs/configs.dart';

class MobilePicking extends StatelessWidget {
  const MobilePicking({super.key});

  @override
  Widget build(BuildContext context) {
    return const InAppWebViewMP();
  }
}

class InAppWebViewMP extends StatefulWidget {
  const InAppWebViewMP({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InAppWebViewMPState createState() => _InAppWebViewMPState();
}

class _InAppWebViewMPState extends State<InAppWebViewMP> {
  late InAppWebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: WebUri(Links.mobilePicking)),
        onWebViewCreated: (InAppWebViewController controller) {
          _webViewController = controller;
        },
      ),
    );
  }
}
