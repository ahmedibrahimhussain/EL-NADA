import 'package:el_nada/core/recourses/color_manager/color_manager.dart';
import 'package:el_nada/core/recourses/constants/constants.dart';
import 'package:el_nada/core/recourses/styles_manger/styles_manager.dart';
import 'package:el_nada/core/widgets/animated_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/recourses/images_manger/images.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;

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
                height: 1.sh,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 60.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomAnimatedText(
                      text: Constants.welcome,
                      style: getBoldStyle(
                        fontSize: isMobile ? 50 : 30,
                        color: ColorManager.amber,
                      ),
                    ),
                    SizedBox(height: 25.h),
                    CustomAnimatedText(
                      text: Constants.homeViewText,
                      style: getBoldStyle(
                        fontSize: isMobile ? 35 : 20,
                        color: ColorManager.white,
                      ),
                    ),
                    const Spacer(),

                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
