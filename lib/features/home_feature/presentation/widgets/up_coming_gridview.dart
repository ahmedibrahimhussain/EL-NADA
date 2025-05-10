import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:el_nada/features/home_feature/presentation/widgets/projects_animation_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';

class UpComingGridview extends StatelessWidget {
  const UpComingGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: FirebaseFirestore.instance.collection('UpComing').get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(child: Text("لا يوجد برامج حالياً."));
        }

        final docs = snapshot.data!.docs;
        return SizedBox(
          width: 1200.w,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: docs.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 100.w,
              mainAxisSpacing: 50.h,
              childAspectRatio: 1.9,
            ),
            itemBuilder: (context, index) {
              final data = docs[index].data() as Map<String, dynamic>;

              return ThreeDCard(
                title: data['name'] ?? '',
                subtitle: data['category'] ?? "تطبيق جوال ",
                imagePath: data['coverImage'] ?? '', onTap: () {},
              );
            },
          ),
        );
      },
    );
  }
}
