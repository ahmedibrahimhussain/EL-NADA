import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/recourses/color_manager/color_manager.dart';
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 80.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 60.w,
        children: [
          Column(
            spacing: 30.h,
            children: [
              CustomAnimatedText(
                text: title,
                style: getBoldStyle(fontSize: 40, color: ColorManager.white),
              ),
              SizedBox(
                height: 300.h,
                width: 600.w,
                child: Text(
                  description,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: getBoldStyle(fontSize: 14, color: ColorManager.white),
                ),
              ),
            ],
          ),
          Expanded(child: DetailsCard(imagePath: imagePath)),
        ],
      ),
    );
  }
}
