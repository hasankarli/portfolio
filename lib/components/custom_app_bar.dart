import 'package:flutter/material.dart';
import 'package:portfolio/constant/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    super.key,
    required this.scaffoldKey,
    required this.homeKey,
    required this.projectsKey,
    required this.contactsKey,
    required this.aboutKey,
    required this.skillsKey,
  });
  final GlobalKey<ScaffoldState> scaffoldKey;
  final GlobalKey homeKey;
  final GlobalKey projectsKey;
  final GlobalKey skillsKey;
  final GlobalKey contactsKey;
  final GlobalKey aboutKey;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 450));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        gradient: AppTheme.linearGradient,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppTheme.isMobile(context) ? 10.w : 50.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Scrollable.ensureVisible(
                  widget.homeKey.currentContext!,
                  duration: const Duration(milliseconds: 450),
                  curve: Curves.easeInOut),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            AppTheme.isMobile(context)
                ? IconButton(
                    icon: AnimatedIcon(
                      icon: AnimatedIcons.menu_home,
                      progress: _animationController,
                      color: Colors.white,
                    ),
                    onPressed: () =>
                        widget.scaffoldKey.currentState?.openDrawer(),
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () => Scrollable.ensureVisible(
                              widget.projectsKey.currentContext!,
                              duration: const Duration(milliseconds: 450),
                              curve: Curves.easeInOut),
                          child: const AppBarButton(text: 'PROJECTS')),
                      SizedBox(
                        width: 10.w,
                      ),
                      GestureDetector(
                          onTap: () => Scrollable.ensureVisible(
                              widget.skillsKey.currentContext!,
                              duration: const Duration(milliseconds: 450),
                              curve: Curves.easeInOut),
                          child: const AppBarButton(text: 'SKILLS')),
                      SizedBox(
                        width: 10.w,
                      ),
                      GestureDetector(
                          onTap: () => Scrollable.ensureVisible(
                              widget.aboutKey.currentContext!,
                              duration: const Duration(milliseconds: 450),
                              curve: Curves.easeInOut),
                          child: const AppBarButton(text: 'ABOUT')),
                      SizedBox(
                        width: 10.w,
                      ),
                      GestureDetector(
                          onTap: () => Scrollable.ensureVisible(
                              widget.contactsKey.currentContext!,
                              duration: const Duration(milliseconds: 450),
                              curve: Curves.easeInOut),
                          child: const AppBarButton(text: 'CONTACT')),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

class AppBarButton extends StatefulWidget {
  final String text;
  const AppBarButton({
    super.key,
    required this.text,
  });

  @override
  State<AppBarButton> createState() => _AppBarButtonState();
}

class _AppBarButtonState extends State<AppBarButton> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _isHover = true),
      onExit: (event) => setState(() => _isHover = false),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            widget.text,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          ),
          const SizedBox(
            height: 6,
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 40,
            height: 2,
            color: _isHover ? Colors.white : Colors.transparent,
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
