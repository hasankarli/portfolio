import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/const.dart';
import '../constant/theme.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var skillSetRowItemCount = AppTheme.isMobile(context)
        ? 3
        : AppTheme.isTablet(context)
            ? 4
            : 6;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text('Skills',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 3.h),
          ],
        ),
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w),
          child: Column(
            children:
                List.generate(skills.length ~/ skillSetRowItemCount, (index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 3.w),
                child: Row(
                  children: List.generate(
                    skills
                        .sublist(index * skillSetRowItemCount,
                            index * skillSetRowItemCount + skillSetRowItemCount)
                        .length,
                    (subIndex) => Expanded(
                      child: SkillWidget(
                        title: skills[subIndex + (index * skillSetRowItemCount)]
                            .title,
                        imageAsset:
                            skills[subIndex + (index * skillSetRowItemCount)]
                                .imageAsset,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}

class SkillWidget extends StatefulWidget {
  const SkillWidget({
    super.key,
    required this.title,
    required this.imageAsset,
  });

  final String title;
  final String imageAsset;

  @override
  State<SkillWidget> createState() => _SkillWidgetState();
}

class _SkillWidgetState extends State<SkillWidget> {
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
        margin: EdgeInsets.fromLTRB(15, !_isHover ? 10 : 0, 15, 0),
        padding: const EdgeInsets.only(top: 10, bottom: 5),
        height: 90,
        decoration: BoxDecoration(
          color: AppTheme.socialButtonBgColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: _isHover ? Colors.white : Colors.transparent,
          ),
          boxShadow: [
            BoxShadow(
              color:
                  _isHover ? Colors.white.withOpacity(0.7) : Colors.transparent,
              blurRadius: 15,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Image.asset(
                  widget.imageAsset,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: _isHover ? 1 : 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      child: Text(
                        widget.title,
                        maxLines: 1,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
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
