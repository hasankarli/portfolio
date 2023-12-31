// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';

import '../constant/theme.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var isMobile = AppTheme.isMobile(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Text(
              'About',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 10),
        isMobile
            ? Column(
                children: [
                  const Text(
                    'I live in Antalya, Turkey. I have been working professionally in software companies for 4.5 years, and for the past 3 years, I have been working remotely. I have been following and enjoying Flutter since it became stable. I started my career as a backend developer and then transitioned to becoming a Flutter developer. I work as a Full Stack Mobile Developer on my projects. In terms of backend technologies, I specialize in Node.js development. I have a degree in Software Engineering and Industrial Engineering from university. I enjoy learning from others, as well as spending time with my family and friends. In my free time, I like swimming, cycling, and conducting research.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        height: 1.5,
                        letterSpacing: 0.4),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const ProfilePhoto(),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.socialButtonBgColor,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 25),
                          ),
                          onPressed: () async {
                            window.open(
                                'https://drive.google.com/file/d/1huhn2hzD0HH302FsQ3h5oKkhYf2I8S0F/view?usp=drive_link',
                                'new tab');
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'RESUME PDF',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 7,
                    child: Text(
                      'I live in Antalya, Turkey. I have been working professionally in software companies for 4.5 years, and for the past 3 years, I have been working remotely. I have been following and enjoying Flutter since it became stable. I started my career as a backend developer and then transitioned to becoming a Flutter developer. I work as a Full Stack Mobile Developer on my projects. In terms of backend technologies, I specialize in Node.js development. I have a degree in Software Engineering and Industrial Engineering from university. I enjoy learning from others, as well as spending time with my family and friends. In my free time, I like swimming, cycling, and conducting research.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          height: 2,
                          letterSpacing: 0.4),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const ProfilePhoto(),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppTheme.socialButtonBgColor,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 25),
                              ),
                              onPressed: () async {
                                window.open(
                                    'https://drive.google.com/file/d/1huhn2hzD0HH302FsQ3h5oKkhYf2I8S0F/view?usp=drive_link',
                                    'new tab');
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'RESUME PDF',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Image.asset(
        'assets/images/profile.jpeg',
        fit: BoxFit.cover,
      ),
    );
  }
}
