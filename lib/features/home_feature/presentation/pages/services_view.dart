import 'package:el_nada/core/recourses/images_manger/images.dart';
import 'package:flutter/material.dart';
import 'package:el_nada/core/recourses/color_manager/color_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/recourses/constants/constants.dart';
import '../../../../core/recourses/styles_manger/styles_manager.dart';
import '../../../../core/widgets/animated_text.dart';
import '../widgets/services_card.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < Constants.mobileSize;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 30.h,
      children: [
        CustomAnimatedText(
          text: "شركة برمجة تساعدك",
          style: getBoldStyle(fontSize: isMobile ? 45 : 30, color: ColorManager.amber),
        ),
        SizedBox(
          width:  800.w,
          child: Text(
            Constants.servicesViewDescription,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: getBoldStyle(fontSize: isMobile ? 30 : 16, color: ColorManager.white),
          ),
        ),
        isMobile
            ? Column(
              children: [
                ServicesCard(
                  title: Constants.servicesViewPhoneTitle,
                  description: Constants.servicesViewPhoneDescription,
                  imagePath: ImagesManger.servicesViewPhone,
                  cardWidth: screenWidth * 0.85,
                ),
                SizedBox(height: 20.h),
                ServicesCard(
                  title: Constants.servicesViewWebTitle,
                  description: Constants.servicesViewWebDescription,
                  imagePath: ImagesManger.codeBackground,
                  cardWidth: screenWidth * 0.85,
                ),
                SizedBox(height: 20.h),
                ServicesCard(
                  title: Constants.servicesViewLogoTitle,
                  description: Constants.servicesViewLogoDescription,
                  imagePath: ImagesManger.servicesViewLogo,
                  cardWidth: screenWidth * 0.85,
                ),
              ],
            )
            : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ServicesCard(
                  title: Constants.servicesViewPhoneTitle,
                  description: Constants.servicesViewPhoneDescription,
                  imagePath: ImagesManger.servicesViewPhone,
                ),
                ServicesCard(
                  title: Constants.servicesViewWebTitle,
                  description: Constants.servicesViewWebDescription,
                  imagePath: ImagesManger.codeBackground,
                ),
                ServicesCard(
                  title: Constants.servicesViewLogoTitle,
                  description: Constants.servicesViewLogoDescription,
                  imagePath: ImagesManger.servicesViewLogo,
                ),
              ],
            ),
        SizedBox(height: 50.h),
      ],
    );
  }
}
