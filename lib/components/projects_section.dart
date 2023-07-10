import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/const.dart';
import '../constant/theme.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
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
              'Projects',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        isMobile
            ? Column(
                children: List.generate(
                    projects.length,
                    (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: MobileProjectWidget(
                          imageAsset: projects[index].assetName,
                          title: projects[index].title,
                          bgColor: index == 1 ? Colors.white : null,
                        ))).toList(),
              )
            : Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ProjectWidget(
                          imageAsset: projects[0].assetName,
                          title: projects[0].title,
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Expanded(
                        child: ProjectWidget(
                          imageAsset: projects[1].assetName,
                          title: projects[1].title,
                          bgColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ProjectWidget(
                          imageAsset: projects[2].assetName,
                          title: projects[2].title,
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Expanded(
                        child: ProjectWidget(
                          imageAsset: projects[3].assetName,
                          title: projects[3].title,
                          bgColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Expanded(
                        child: ProjectWidget(
                          imageAsset: projects[4].assetName,
                          title: projects[4].title,
                        ),
                      ),
                    ],
                  )
                ],
              ),
        SizedBox(
          height: 3.h,
        ),
        // Row(
        //   children: [
        //     const ProjectWidget(
        //       imageAsset: 'assets/images/petros-logo.png',
        //       title: 'Petros',
        //     ),
        //     SizedBox(
        //       width: 4.w,
        //     ),
        //     const ProjectWidget(
        //       imageAsset: 'assets/images/cardit-logo.png',
        //       title: 'Cardit',
        //       bgColor: Colors.white,
        //     ),
        //     SizedBox(
        //       width: 4.w,
        //     ),
        //     const ProjectWidget(
        //       imageAsset: 'assets/images/cardit-logo.png',
        //       title: 'Cardit',
        //       bgColor: Colors.white,
        //     ),
        //   ],
        // )
      ],
    );
  }
}

class MobileProjectWidget extends StatefulWidget {
  const MobileProjectWidget({
    super.key,
    required this.imageAsset,
    required this.title,
    this.bgColor,
  });
  final String imageAsset;
  final String title;
  final Color? bgColor;

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
                    image: AssetImage(widget.imageAsset),
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
    );
  }
}

class ProjectWidget extends StatefulWidget {
  const ProjectWidget({
    super.key,
    required this.imageAsset,
    required this.title,
    this.bgColor,
  });
  final String imageAsset;
  final String title;
  final Color? bgColor;

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
                    image: AssetImage(widget.imageAsset),
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
    );
  }
}
