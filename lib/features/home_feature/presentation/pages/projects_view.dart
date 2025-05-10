import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/recourses/styles_manger/styles_manager.dart';
import '../../../../core/recourses/color_manager/color_manager.dart';
import '../../../../core/widgets/animated_text.dart';
import '../widgets/projects_gridview.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(spacing: 30.h,
      children: [
        CustomAnimatedText(
          text: "مشاريعنا المتميزة.",
          style: getBoldStyle(fontSize: 30, color: ColorManager.amber),
        ),
        ProjectsGridview(),
        SizedBox(height: 30.h,),
      ],
    );
  }
}
