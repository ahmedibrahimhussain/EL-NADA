import 'package:el_nada/features/home_feature/presentation/widgets/custom_contact_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/recourses/color_manager/color_manager.dart';
import '../../../../core/recourses/constants/constants.dart';
import '../../../../core/recourses/images_manger/images.dart';
import '../../../../core/recourses/styles_manger/styles_manager.dart';
import '../../../../core/widgets/animated_text.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 20,
            children: [
              CustomContactCard(
                icon: Icons.phone,
                title: "اتصل بنا",
                contentLines: [" 01550077272", " 01064544581"],
              ),
              CustomContactCard(
                icon: Icons.email_outlined,
                title: "البريد الإلكتروني",
                contentLines: [
                  " mahmoudswilam24@gmail.com",
                  "ihahima54321@gimail.com",
                ],
              ),
            ],
          ),

          Center(
            child: Column(
              spacing: 30.h,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  ImagesManger.logo,
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                CustomAnimatedText(
                  text: "شركة الندى للبرمجيات",
                  style: getBoldStyle(fontSize: 25, color: ColorManager.amber),
                ),
                SizedBox(
                  height: 180.h,
                  width: 300.w,
                  child: Text(
                    Constants.contactUsViewText,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: getBoldStyle(
                      fontSize: 14,
                      color: ColorManager.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
