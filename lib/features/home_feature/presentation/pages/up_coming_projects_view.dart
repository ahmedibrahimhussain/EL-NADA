import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/recourses/constants/constants.dart';
import '../../../../core/recourses/styles_manger/styles_manager.dart';
import '../../../../core/recourses/color_manager/color_manager.dart';
import '../../../../core/widgets/animated_text.dart';
import '../widgets/up_coming_gridview.dart';

class UpComingProjectsView extends StatelessWidget {
  const UpComingProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < Constants.mobileSize;
    return Column(
      children: [
        CustomAnimatedText(
          text: "مشاريعنا القادمة.",
          style: getBoldStyle(
            fontSize: isMobile ? 45 : 30,
            color: ColorManager.amber,
          ),
        ),
        SizedBox(height: 50.h),
        const UpComingGridview(),
        SizedBox(height: 30.h),
      ],
    );
  }
}
