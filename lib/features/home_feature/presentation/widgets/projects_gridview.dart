import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/recourses/constants/constants.dart';
import '../../../../core/routing/routes.dart';
import 'projects_animation_card.dart';

class ProjectsGridview extends StatelessWidget {
  const ProjectsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: FirebaseFirestore.instance.collection('projectes').get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(child: Text("لا يوجد برامج حالياً."));
        }

        final docs = snapshot.data!.docs;
        final screenWidth = MediaQuery.of(context).size.width;
        final isMobile = screenWidth <  Constants.mobileSize;

        return Center(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 80.w),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: docs.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isMobile ? 1 : 2,
                crossAxisSpacing: isMobile ? 20.w : 100.w,
                mainAxisSpacing: 50.h,
                childAspectRatio: 1.9,
              ),
              itemBuilder: (context, index) {
                final data = docs[index].data() as Map<String, dynamic>;

                return ThreeDCard(
                  title: data['name'] ?? '',
                  subtitle: data['category'] ?? 'تطبيق جوال',
                  imagePath: data['coverImage'] ?? '',
                  onTap: () {
                    context.go('${Routes.detailsView}/${docs[index].id}');
                  }, isMobile: isMobile,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
