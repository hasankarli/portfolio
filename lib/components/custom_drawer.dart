import 'package:flutter/material.dart';

import '../constant/theme.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.scaffoldKey,
    required this.projectsKey,
    required this.homeKey,
    required this.contactsKey,
    required this.aboutKey,
    required this.skillsKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;
  final GlobalKey homeKey;
  final GlobalKey projectsKey;
  final GlobalKey skillsKey;
  final GlobalKey aboutKey;
  final GlobalKey contactsKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppTheme.linearGradient,
      ),
      width: MediaQuery.of(context).size.width,
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                scaffoldKey.currentState?.closeDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, right: 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(15),
                      child: const Text(
                        'CLOSE',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DrawerItem(
                      title: 'HOME',
                      onTap: () {
                        Scrollable.ensureVisible(
                          homeKey.currentContext!,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                    DrawerItem(
                      title: 'PROJECTS',
                      onTap: () {
                        Scrollable.ensureVisible(
                          projectsKey.currentContext!,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                    DrawerItem(
                      title: 'SKILLS',
                      onTap: () {
                        Scrollable.ensureVisible(
                          skillsKey.currentContext!,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                    DrawerItem(
                      title: 'ABOUT',
                      onTap: () {
                        Scrollable.ensureVisible(
                          aboutKey.currentContext!,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                    DrawerItem(
                      title: 'CONTACT',
                      onTap: () {
                        Scrollable.ensureVisible(
                          contactsKey.currentContext!,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
        Navigator.of(context).pop();
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
