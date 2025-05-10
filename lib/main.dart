import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/recourses/theme_manger/theme_manager.dart';
import 'core/routing/router.dart';
import 'firebase_options.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ElNADA());

}

class ElNADA extends StatelessWidget {
  const ElNADA({super.key});

  @override
  Widget build(BuildContext context) {

    return  ScreenUtilInit(
      designSize: const Size(1440, 1024),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: getAppTheme(),
          routerConfig: router,
        );
      },
    );
  }
}
