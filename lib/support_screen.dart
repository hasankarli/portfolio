import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constant/theme.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var isMobile = AppTheme.isMobile(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppTheme.linearGradient,
        ),
        child: isMobile
            ? SingleChildScrollView(
                padding: const EdgeInsets.symmetric(),
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Support',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            'If you have any questions or need help, please feel free to contact me. I will get back to you as soon as possible.',
                            style: TextStyle(
                              fontSize: 8.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Text(
                                'Email: ',
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'karlihasann@gmail.com',
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your name',
                          style: TextStyle(fontSize: 8.sp, color: Colors.white),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          width: 300.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: TextField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 5.w),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Your email',
                          style: TextStyle(fontSize: 8.sp, color: Colors.white),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          width: 300.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 5.w),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Your message',
                          style: TextStyle(fontSize: 8.sp, color: Colors.white),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          width: 300.w,
                          height: 200.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: TextField(
                            controller: _messageController,
                            maxLines: 10,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 5.w),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          width: 300.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: TextButton(
                            onPressed: () async {
                              final Uri params = Uri(
                                scheme: 'mailto',
                                path: 'karlihasann@gmail.com',
                                query:
                                    'subject=Support&body=${_nameController.text},\n${_messageController.text}',
                              );

                              if (await canLaunchUrl(params)) {
                                await launchUrl(params);
                              } else {
                                throw 'Could not launch $params';
                              }
                            },
                            child: Text(
                              'Send',
                              style: TextStyle(
                                fontSize: 8.sp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 200.h),
                  ],
                ),
              )
            : _WebWidget(),
      ),
    );
  }
}

class _WebWidget extends StatelessWidget {
  _WebWidget({
    super.key,
  });

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Support',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'If you have any questions or need help, please feel free to contact me. I will get back to you as soon as possible.',
                      style: TextStyle(
                        fontSize: 8.sp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Text(
                          'Email: ',
                          style: TextStyle(
                            fontSize: 8.sp,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'karlihasann@gmail.com',
                          style: TextStyle(
                            fontSize: 8.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your name',
                      style: TextStyle(fontSize: 8.sp, color: Colors.white),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      width: 300.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Your email',
                      style: TextStyle(fontSize: 8.sp, color: Colors.white),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      width: 300.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Your message',
                      style: TextStyle(fontSize: 8.sp, color: Colors.white),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      width: 300.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: TextField(
                        controller: _messageController,
                        maxLines: 10,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 5.w),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: 300.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: TextButton(
                        onPressed: () async {
                          final Uri params = Uri(
                            scheme: 'mailto',
                            path: 'karlihasann@gmail.com',
                            query:
                                'subject=Support&body=${_nameController.text},\n${_messageController.text}',
                          );

                          if (await canLaunchUrl(params)) {
                            await launchUrl(params);
                          } else {
                            throw 'Could not launch $params';
                          }
                        },
                        child: Text(
                          'Send',
                          style: TextStyle(
                            fontSize: 8.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 200.h),
        ],
      ),
    );
  }
}
