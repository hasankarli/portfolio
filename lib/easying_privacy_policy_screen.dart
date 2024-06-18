import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constant/const.dart';

import 'constant/theme.dart';

class EasyingPrivacyPolicyScreen extends StatefulWidget {
  const EasyingPrivacyPolicyScreen({super.key});

  @override
  State<EasyingPrivacyPolicyScreen> createState() =>
      _EasyingPrivacyPolicyScreenState();
}

class _EasyingPrivacyPolicyScreenState
    extends State<EasyingPrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppTheme.linearGradient,
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              const Text('Easying Privacy Policy',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 2.h),
              const Text(enEasyingPrivacyPolicyText,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      letterSpacing: 0.4,
                      height: 1.7)),
            ],
          ),
        ),
      ),
    );
  }
}
