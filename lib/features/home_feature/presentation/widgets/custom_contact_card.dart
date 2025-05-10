import 'package:el_nada/core/recourses/color_manager/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/recourses/styles_manger/styles_manager.dart';
import '../../../../core/widgets/hover_effect_wrapper.dart';

class CustomContactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<String> contentLines;

  const CustomContactCard({
    super.key,
    required this.icon,
    required this.title,
    required this.contentLines,
  });

  @override
  Widget build(BuildContext context) {
    return HoverEffectWrapper(
      effect: HoverEffectType.float,
      hoverBorderColor: Colors.deepPurpleAccent,
      child: Container(
        width: 300.w,
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          color: ColorManager.scaffoldBackGroundColor,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: getBoldStyle(fontSize: 22, color: ColorManager.white),
                ),
                SizedBox(width: 10.w),
                Icon(icon, size: 40.sp, color: ColorManager.white),
              ],
            ),
            SizedBox(height: 10.h),
            ...contentLines.map(
              (line) => Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  line,
                  style: getMediumStyle(color: ColorManager.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
