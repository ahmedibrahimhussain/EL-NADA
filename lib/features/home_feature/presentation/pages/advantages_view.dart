import 'package:el_nada/core/recourses/color_manager/color_manager.dart';
import 'package:el_nada/core/recourses/images_manger/images.dart';
import 'package:el_nada/core/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/recourses/constants/constants.dart';
import '../../../../core/recourses/styles_manger/styles_manager.dart';
import '../../../../core/widgets/animated_text.dart';

class AdvantagesView extends StatelessWidget {
  const AdvantagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 40.w),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < Constants.mobileSize;

          return isMobile
              ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomAnimatedText(
                    text: Constants.aboutCompanyText,
                    style: getBoldStyle(
                      fontSize: isMobile ? 30 : 10,
                      color: ColorManager.white,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomAnimatedText(
                    text: Constants.advantagesViewText1,
                    style: getBoldStyle(
                      fontSize: isMobile ? 36 : 30,
                      color: ColorManager.amber,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 0.7.sw,
                    child: Text(
                      Constants.advantagesViewText2,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: getBoldStyle(
                        fontSize: isMobile ? 30 : 16,
                        color: ColorManager.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 100.h),
                  FloatingImage(imagePath: ImagesManger.advantagesImage1),
                ],
              )
              : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomAnimatedText(
                        text: Constants.aboutCompanyText,
                        style: getBoldStyle(
                          fontSize: 10,
                          color: ColorManager.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      CustomAnimatedText(
                        text: Constants.advantagesViewText1,
                        style: getBoldStyle(
                          fontSize: 30,
                          color: ColorManager.amber,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        width: 600.w,
                        child: Text(
                          Constants.advantagesViewText2,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: getBoldStyle(
                            fontSize: 16,
                            color: ColorManager.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 100.w),
                  Expanded(
                    child: FloatingImage(
                      imagePath: ImagesManger.advantagesImage1,
                    ),
                  ),
                ],
              );
        },
      ),
    );
  }
}
