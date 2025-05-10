import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/recourses/color_manager/color_manager.dart';
import '../../../../core/recourses/styles_manger/styles_manager.dart';
import '../../../../core/widgets/animated_text.dart';
import 'details_card.dart';

class DetailsViewImagesListView extends StatelessWidget {
  const DetailsViewImagesListView({super.key, required this.title, required this.images});
  final String title;
  final List<String> images ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 200.w),
      child: Column(
        spacing: 40.h,
        children: [
          SizedBox(height: 80.h),
          CustomAnimatedText(
            text: '''تفاصيل من $title''',
            style: getBoldStyle(fontSize: 20, color: ColorManager.white),
          ),

          ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              scrollbars: true,
              dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
            ),
            child: SizedBox(
              height: 500.h,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder:
                    (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: DetailsCard(
                        imagePath: images[index],
                      ),
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
