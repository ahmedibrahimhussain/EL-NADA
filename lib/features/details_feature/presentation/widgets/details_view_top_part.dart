import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/recourses/color_manager/color_manager.dart';
import '../../../../core/recourses/constants/constants.dart';
import '../../../../core/recourses/styles_manger/styles_manager.dart';
import '../../../../core/widgets/animated_text.dart';
import 'details_card.dart';

class DetailsViewTopPart extends StatelessWidget {
  const DetailsViewTopPart({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  final String imagePath;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < Constants.mobileSize;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 20.w : 80.w),
      child: isMobile
          ? Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DetailsCard(
            imagePath: imagePath,
            width: 1000.w,
            height: 250.h,
          ),
          SizedBox(height: 30.h),
          CustomAnimatedText(
            text: title,
            style: getBoldStyle(
              fontSize:isMobile ? 50 : 40,
              color: ColorManager.white,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            description,
            textAlign: TextAlign.center,
            style: getBoldStyle(
              fontSize: isMobile ? 35 : 20,
              color: ColorManager.white,
            ),
          ),
        ],
      )
          : Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAnimatedText(
                  text: title,
                  style: getBoldStyle(
                    fontSize: isMobile ? 50 : 40,
                    color: ColorManager.white,
                  ),
                ),
                SizedBox(height: 30.h),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: getBoldStyle(
                    fontSize:isMobile ? 35 : 20,
                    color: ColorManager.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 60.w),
          DetailsCard(
            imagePath: imagePath,
            width: 500.w,
            height: 400.h,
          ),
        ],
      ),
    );
  }
}
