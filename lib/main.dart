import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/home_screen.dart';

import 'components/loading_indicator_web.dart';

void main() {
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
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Hasan Karli',
          home: HomeScreen(),
        );
      },
    );
  }
}
