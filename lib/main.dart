import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/home_screen.dart';
import 'package:portfolio/privacy_policy_screen.dart';
import 'package:portfolio/support_screen.dart';
import 'package:url_strategy/url_strategy.dart';

import 'components/loading_indicator_web.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
  SchedulerBinding.instance.addPostFrameCallback(
    (_) => removeLoadingIndicator(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Hasan Karli',
            initialRoute: '/',
            routes: {
              '/': (context) => const HomeScreen(),
              '/support': (context) => const SupportScreen(),
              '/privacy-policy': (context) => const PrivacyPolicyScreen(),
            });
      },
    );
  }
}
