import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'presentation/pages.dart';

void main() async {
  await SentryFlutter.init((options) {
    options.dsn =
        'https://2b5ee226df8737eeafcabb31f354771e@o4508500692434944.ingest.us.sentry.io/4508500730970112';
    options.tracesSampleRate = 0.01; 
    options.profilesSampleRate = 1.0;
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LogiLinks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const GetStartedPage(),
    );
  }
}
