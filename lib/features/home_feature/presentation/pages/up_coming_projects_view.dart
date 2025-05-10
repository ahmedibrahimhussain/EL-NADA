import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/recourses/styles_manger/styles_manager.dart';
import '../../../../core/recourses/color_manager/color_manager.dart';
import '../../../../core/widgets/animated_text.dart';
import '../widgets/up_coming_gridview.dart';

class UpComingProjectsView extends StatelessWidget {
  const UpComingProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          color: ColorManager.scaffoldBackGroundColor,
          width: double.infinity,
        ),
        CustomAnimatedText(
          text: "مشاريعنا القادمة.",
          style: getBoldStyle(fontSize: 30, color: ColorManager.amber),
        ),SizedBox(height: 50.h,),
        UpComingGridview(),
      ],
    );
  }
}
