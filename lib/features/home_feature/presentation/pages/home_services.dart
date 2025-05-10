import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/recourses/images_manger/images.dart';
import '../../../../core/services/url_services.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../pages/advantages_view.dart';
import '../pages/contact_us_view.dart';
import '../pages/home_view.dart';
import '../pages/projects_view.dart';
import '../pages/services_view.dart';
import '../pages/up_coming_projects_view.dart';

class HomeServices extends StatelessWidget {
  HomeServices({super.key});

  final ScrollController scrollController = ScrollController();

  final GlobalKey homeKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey servicesKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey upcomingProjectsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAdminAppBar(
        context,
        homeKey: homeKey,
        aboutKey: aboutKey,
        servicesKey: servicesKey,
        projectsKey: projectsKey,
        upcomingProjectsKey: upcomingProjectsKey,
        contactKey: contactKey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.all(20.0.sp),
        child: GestureDetector(
          onTap: () => openWhatsApp("1550077272"),
          child: SvgPicture.asset(
            ImagesManger.whatsapp,
            height: MediaQuery.of(context).size.height * .1,
          ),
        ),
      ),

      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Container(key: homeKey, child: HomeView()),
            Container(key: aboutKey, child: AdvantagesView()),
            Container(key: servicesKey, child: ServicesView()),
            Container(key: projectsKey, child: ProjectsView()),
            Container(key: upcomingProjectsKey, child: UpComingProjectsView()),
            Container(key: contactKey, child: ContactUsView()),
          ],
        ),
      ),
    );
  }
}
