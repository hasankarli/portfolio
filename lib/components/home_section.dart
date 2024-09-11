import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/constant/theme.dart';
import 'package:rive/rive.dart' as rive;

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var isMobile = AppTheme.isMobile(context);
    return Container(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          SizedBox(
              height: 600,
              child: Opacity(
                opacity: 0.7,
                child: Transform.flip(
                  flipX: true,
                  flipY: true,
                  child: const rive.RiveAnimation.asset(
                    'assets/rives/shapes.riv',
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Padding(
            padding: EdgeInsets.only(left: 50.w, top: 100),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TyperAnimatedText(
                            'Hi!',
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 80,
                                fontWeight: FontWeight.bold),
                            speed: const Duration(milliseconds: 100),
                          ),
                          TyperAnimatedText(
                            'I\'m',
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 80,
                                fontWeight: FontWeight.bold),
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                    ],
                  ),
                  const Text(
                    'Hasan Karlı',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    margin: isMobile
                        ? const EdgeInsets.only(right: 10)
                        : EdgeInsets.zero,
                    padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 15 : 30, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 252, 74, 29),
                          Color.fromARGB(255, 236, 86, 57),
                          Color(0xffea5753),
                          Color(0xfff9b16e),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: const Text(
                      'Flutter Developer',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
