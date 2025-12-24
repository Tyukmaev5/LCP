import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:logilinks/core/configs/configs.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class Ewm extends StatelessWidget {
  const Ewm({super.key});

  @override
  Widget build(BuildContext context) {
    return const InAppWebViewEWM();
  }
}

class InAppWebViewEWM extends StatefulWidget {
  const InAppWebViewEWM({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InAppWebViewEWMState createState() => _InAppWebViewEWMState();
}

class _InAppWebViewEWMState extends State<InAppWebViewEWM> {
  late InAppWebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: WebUri(Links.rfui)),
        initialSettings: InAppWebViewSettings(
          useWideViewPort: true,
          loadWithOverviewMode: true,
        ),
        // когда WebView готов к использованию срабатывает обратный вызов
        onWebViewCreated: (InAppWebViewController controller) {
          _webViewController = controller;
        },
        // событие, которое срабатывает при запуске WebView для загрузки URL-адреса.
        onLoadStart: (controller, url) {
          setState(() async {
            try {
              int? test;
              test! + 3;
            } catch (exception, stackTrace) {
              await Sentry.captureException(
                exception,
                stackTrace: stackTrace,
              );
            }
          });
        },
        // событие, запускается, когда WebView завершает загрузку URL-адреса.
        onLoadStop: (controller, url) {
          setState(() {});
        },
        // событие, которое срабатывает, когда главная страница WebView получает ошибку HTTP.
        onReceivedHttpError: (controller, request, error) {
          setState(() {});
        },
      ),
    );
  }
}
