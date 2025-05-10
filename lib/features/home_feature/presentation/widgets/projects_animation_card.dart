import 'package:el_nada/core/recourses/styles_manger/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/recourses/color_manager/color_manager.dart';
import '../../../../core/widgets/hover_effect_wrapper.dart';

class ThreeDCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final Function() onTap;

  const ThreeDCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: HoverEffectWrapper(
        hoverBorderColor: ColorManager.red,
        effect: HoverEffectType.scale,
        child: Container(
          width: 400.w,
          height: 350.h,
          clipBehavior: Clip.none,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 20.r,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [

              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.network(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),



              Positioned(
                top: 120.h,
                left: -60.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: getBoldStyle(fontSize: 22, color: ColorManager.amber),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      subtitle,
                      style: getMediumStyle(fontSize: 20, color: ColorManager.amber),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
