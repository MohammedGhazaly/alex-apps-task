import 'package:alex_apps_taks/views/custom_bottom_nav_bar/custom_bottom_nav_bar.dart';
import 'package:alex_apps_taks/views/home/home_view.dart';
import 'package:alex_apps_taks/views/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Winner's way",
        locale: const Locale("ar"),
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
        ),
        initialRoute: CustomBottomNavBar.routeName,
        routes: {
          LoginView.routeName: (context) => const LoginView(),
          CustomBottomNavBar.routeName: (context) => const CustomBottomNavBar(),
        },
      ),
    );
  }
}
