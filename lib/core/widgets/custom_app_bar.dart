import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/home_feature/presentation/controller/scroll_controller.dart';
import '../recourses/color_manager/color_manager.dart';
import '../recourses/images_manger/images.dart';
import '../recourses/styles_manger/styles_manager.dart';

AppBar customAdminAppBar(
  BuildContext context, {
  required GlobalKey homeKey,
  required GlobalKey aboutKey,
  required GlobalKey servicesKey,
  required GlobalKey projectsKey,
  required GlobalKey upcomingProjectsKey,
  required GlobalKey contactKey,
}) {
  final isMobile = MediaQuery.of(context).size.width < 800;

  return AppBar(
    toolbarHeight: 80.h,
    backgroundColor: ColorManager.scaffoldBackGroundColor,
    automaticallyImplyLeading: false,
    titleSpacing: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isMobile
            ? IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () => Scaffold.of(context).openDrawer(),
            )
            : Row(
              children: [
                AppBarItem(
                  title: 'اتصل بنا',
                  onTap: () => scrollTo(contactKey),
                ),
                AppBarItem(
                  title: 'أعمالنا القادمة',
                  onTap: () => scrollTo(upcomingProjectsKey),
                ),
                AppBarItem(
                  title: 'أعمالنا',
                  onTap: () => scrollTo(projectsKey),
                ),
                AppBarItem(
                  title: 'خدماتنا',
                  onTap: () => scrollTo(servicesKey),
                ),
                AppBarItem(title: 'من نحن', onTap: () => scrollTo(aboutKey)),
                AppBarItem(title: 'الرئيسية', onTap: () => scrollTo(homeKey)),
              ],
            ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SvgPicture.asset(ImagesManger.logo, height: 60.h),
        ),
      ],
    ),
  );
}

Drawer customAdminDrawer({
  required BuildContext context,
  required GlobalKey homeKey,
  required GlobalKey aboutKey,
  required GlobalKey servicesKey,
  required GlobalKey projectsKey,
  required GlobalKey upcomingProjectsKey,
  required GlobalKey contactKey,
}) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: ColorManager.primary),
          child: SvgPicture.asset(ImagesManger.logo),
        ),
        _drawerItem('الرئيسية', () => scrollTo(homeKey)),
        _drawerItem('من نحن', () => scrollTo(aboutKey)),
        _drawerItem('خدماتنا', () => scrollTo(servicesKey)),
        _drawerItem('أعمالنا', () => scrollTo(projectsKey)),
        _drawerItem('أعمالنا القادمة', () => scrollTo(upcomingProjectsKey)),
        _drawerItem('اتصل بنا', () => scrollTo(contactKey)),
      ],
    ),
  );
}

ListTile _drawerItem(String title, VoidCallback onTap) {
  return ListTile(
    title: Text(title, textDirection: TextDirection.rtl),
    onTap: onTap,
  );
}

class AppBarItem extends StatefulWidget {
  final String title;
  final VoidCallback? onTap;

  const AppBarItem({super.key, required this.title, this.onTap});

  @override
  State<AppBarItem> createState() => _AppBarItemState();
}

class _AppBarItemState extends State<AppBarItem> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.r)),
            color: _isHovering ? ColorManager.secondaryColor : null,
          ),
          child: Text(
            widget.title,
            style: getSemiBoldStyle(
              color: _isHovering ? ColorManager.black : ColorManager.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
