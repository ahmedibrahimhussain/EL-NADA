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
      padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 20.w),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < Constants.mobileSize;

          return isMobile
              ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildCompanyInfo(context),
                  SizedBox(height: 30.h),
                  _buildContactCards(),
                ],
              )
              : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [_buildContactCards(), _buildCompanyInfo(context)],
              );
        },
      ),
    );
  }

  Widget _buildContactCards() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomContactCard(
          icon: Icons.phone,
          title: "اتصل بنا",
          contentLines: ["01550077272", "01064544581"],
        ),
        SizedBox(width: 30.w),
        CustomContactCard(
          icon: Icons.email_outlined,
          title: "البريد الإلكتروني",
          contentLines: [
            "mahmoudswilam24@gmail.com",
            "ihahima54321@gimail.com",
          ],
        ),
      ],
    );
  }

  Widget _buildCompanyInfo(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          ImagesManger.logo,
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        SizedBox(height: 20.h),
        CustomAnimatedText(
          text: "شركة الندى للبرمجيات",
          style: getBoldStyle(fontSize: 25, color: ColorManager.amber),
        ),
        SizedBox(height: 20.h),
        SizedBox(
          width: 300.w,
          child: Text(
            Constants.contactUsViewText,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: getBoldStyle(fontSize: 14, color: ColorManager.white),
          ),
        ),
      ],
    );
  }
}
