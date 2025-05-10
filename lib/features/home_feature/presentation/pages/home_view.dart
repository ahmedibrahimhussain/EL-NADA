import 'package:el_nada/core/recourses/color_manager/color_manager.dart';
import 'package:el_nada/core/recourses/constants/constants.dart';
import 'package:el_nada/core/recourses/styles_manger/styles_manager.dart';
import 'package:el_nada/core/widgets/animated_text.dart';
import 'package:el_nada/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/recourses/images_manger/images.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.transparent],
              stops: [.95, 1],
            ).createShader(bounds);
          },
          blendMode: BlendMode.dstIn,
          child: Image.asset(
            ImagesManger.homeBackground,
            height: 1000.h,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
        ),

        Positioned(
          top: 50.h,
          right: 50.w,
          child: CustomAnimatedText(
            text: Constants.welcome,
            style: getBoldStyle(fontSize: 40, color: ColorManager.amber),
          ),
        ),
        Positioned(
          top: 150.h,
          right: 50.w,
          child: CustomAnimatedText(
            text: Constants.homeViewText,
            style: getBoldStyle(fontSize: 20, color: ColorManager.white),
          ),
        ),
        Positioned(
          bottom: 100.h,
          right: 50.w,
          child: CustomButton(
            text: "شاهد اعمالنا",
            onPressed: () {},
            backgroundColor: ColorManager.grey,
            width: 200.w,
          ),
        ),
      ],
    );
  }
}
