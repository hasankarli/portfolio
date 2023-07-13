import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/about_section.dart';
import 'components/contact_section.dart';
import 'components/custom_app_bar.dart';
import 'components/custom_drawer.dart';
import 'components/home_section.dart';
import 'components/projects_section.dart';
import 'components/skills_section.dart';
import 'constant/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  late ScrollController _scrollController;
  final _homeKey = GlobalKey();
  final _projectsKey = GlobalKey();
  final _aboutKey = GlobalKey();
  final _skillsKey = GlobalKey();
  final _contactsKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(
          homeKey: _homeKey,
          projectsKey: _projectsKey,
          skillsKey: _skillsKey,
          aboutKey: _aboutKey,
          contactsKey: _contactsKey,
          scaffoldKey: scaffoldKey),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppTheme.linearGradient,
        ),
        child: Column(
          children: [
            CustomAppBar(
                homeKey: _homeKey,
                projectsKey: _projectsKey,
                skillsKey: _skillsKey,
                aboutKey: _aboutKey,
                contactsKey: _contactsKey,
                scaffoldKey: scaffoldKey),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(key: _homeKey, child: const HomeSection()),
                    SizedBox(
                      height: 1.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppTheme.isMobile(context) ? 10.w : 50.w),
                      child: Column(
                        children: [
                          Container(
                              key: _projectsKey,
                              child: const ProjectsSection()),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                              key: _skillsKey, child: const SkillsSection()),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                              key: _aboutKey, child: const AboutSection()),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                              key: _contactsKey, child: const ContactSection()),
                          SizedBox(
                            height: 15.h,
                          ),
                          const Text(
                            'Hasan Karlı © 2023 | Work in progress',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
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
