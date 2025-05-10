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
      padding:  EdgeInsets.symmetric(vertical: 200.h),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(spacing: 20.h,crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomAnimatedText(
                text: Constants.aboutCompanyText,
                style: getBoldStyle(fontSize: 10, color: ColorManager.white),
              ),
              CustomAnimatedText(
                text: Constants.advantagesViewText1,
                style: getBoldStyle(fontSize: 30, color: ColorManager.amber),
              ),
              SizedBox(
                height: 300.h,
                width: 600.w,
                child: Text(
                  Constants.advantagesViewText2,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  style: getBoldStyle(fontSize: 16, color: ColorManager.white),
                ),
              ),
            ],
          ),

          FloatingImage(imagePath: ImagesManger.advantagesImage1,),

        ],
      ),
    );
  }
}
