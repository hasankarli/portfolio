import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant/const.dart';
import '../constant/theme.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var projectsRowItemCount = AppTheme.isMobile(context)
        ? 1
        : AppTheme.isTablet(context)
            ? 2
            : 3;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Text(
              'Projects',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          children:
              List.generate(projects.length ~/ projectsRowItemCount, (index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 3.w),
              child: Row(
                children: List.generate(
                  projects
                      .sublist(index * projectsRowItemCount,
                          index * projectsRowItemCount + projectsRowItemCount)
                      .length,
                  (subIndex) => Expanded(
                      child: ProjectWidget(
                    logo: projects[subIndex + (index * projectsRowItemCount)]
                        .logo,
                    title: projects[subIndex + (index * projectsRowItemCount)]
                        .title,
                    description:
                        projects[subIndex + (index * projectsRowItemCount)]
                            .description,
                    appPreview:
                        projects[subIndex + (index * projectsRowItemCount)]
                            .appPreview,
                    appLink: projects[subIndex + (index * projectsRowItemCount)]
                        .appStoreLink,
                  )),
                ),
              ),
            );
          }),
        ),
        SizedBox(
          height: 3.h,
        ),
      ],
    );
  }
}

class MobileProjectWidget extends StatefulWidget {
  const MobileProjectWidget({
    super.key,
    required this.logo,
    required this.title,
    required this.appPreview,
    this.bgColor,
    this.appLink,
  });
  final String title;
  final Color? bgColor;
  final String logo;
  final String appPreview;
  final String? appLink;

  @override
  State<MobileProjectWidget> createState() => _MobileProjectWidgetState();
}

class _MobileProjectWidgetState extends State<MobileProjectWidget> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _isHover = true),
      onExit: (event) => setState(() => _isHover = false),
      onHover: (event) => setState(() {
        if (event.kind == PointerDeviceKind.touch) {
          setState(() {
            _isHover = true;
          });
          Timer(const Duration(milliseconds: 400), () {
            setState(() {
              _isHover = false;
            });
          });
        }
      }),
      child: GestureDetector(
        onTap: () {
          if (widget.appLink != null) {
            launchUrl(Uri.parse(widget.appLink!));
          }
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: EdgeInsets.only(top: !_isHover ? 10 : 0),
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: widget.bgColor,
              border: Border.all(
                color: Colors.white,
              ),
              boxShadow: [
                BoxShadow(
                  color: _isHover
                      ? Colors.white.withOpacity(0.7)
                      : Colors.transparent,
                  blurRadius: 15,
                  offset: const Offset(0, 10),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(widget.appPreview),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        blurRadius: 30,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      widget.title,
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectWidget extends StatefulWidget {
  const ProjectWidget(
      {super.key,
      required this.logo,
      required this.title,
      required this.description,
      required this.appPreview,
      this.appLink});
  final String title;
  final String description;
  final String logo;
  final String appPreview;
  final String? appLink;

  @override
  State<ProjectWidget> createState() => ProjectWidgetState();
}

class ProjectWidgetState extends State<ProjectWidget> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _isHover = true),
      onExit: (event) => setState(() => _isHover = false),
      child: GestureDetector(
        onTap: () {
          if (widget.appLink != null) {
            launchUrl(Uri.parse(widget.appLink!));
          }
        },
        child: AnimatedContainer(
          height: 500,
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: _isHover
                  ? AppTheme.backgroundColor6
                  : AppTheme.backgroundColor5,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                _isHover
                    ? BoxShadow(
                        color: Colors.white.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 10),
                      )
                    : BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      ),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(widget.appPreview),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.title == projects.last.title ? 'Laravel' : 'Flutter',
                style: TextStyle(color: AppTheme.buttonColor),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Icon(Icons.arrow_outward_outlined,
                          color: AppTheme.buttonColor)
                      .animate(
                        target: _isHover ? 1.0 : 0.0,
                      )
                      .fade(
                        curve: Curves.bounceInOut,
                        duration: const Duration(milliseconds: 500),
                      )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                widget.description,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.grey[500], fontSize: 15, height: 1.3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
