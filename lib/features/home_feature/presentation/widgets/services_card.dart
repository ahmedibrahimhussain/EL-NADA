import 'package:el_nada/core/recourses/color_manager/color_manager.dart';
import 'package:el_nada/core/recourses/styles_manger/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/hover_effect_wrapper.dart';

class ServicesCard extends StatelessWidget {
  const ServicesCard({
    super.key,
    this.cardWidth,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  final double? cardWidth;
  final String title;
  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return HoverEffectWrapper(
      effect: HoverEffectType.flood,
      child: Container(
        padding: EdgeInsets.all(20.sp),
        decoration: BoxDecoration(
          color: ColorManager.scaffoldBackGroundColor,
          borderRadius: BorderRadius.circular(30.r),
        ),
        width: cardWidth ?? 350.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              textDirection: TextDirection.rtl,
              style: getBoldStyle(
                fontSize: isMobile ? 40 : 20,
                color: ColorManager.white,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              description,
              textDirection: TextDirection.rtl,
              style: getMediumStyle(
                fontSize: isMobile ? 40 : 14,
                color: ColorManager.grey,

              ),
            ),
            SizedBox(height: 15.h),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
                height: 280.h,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
