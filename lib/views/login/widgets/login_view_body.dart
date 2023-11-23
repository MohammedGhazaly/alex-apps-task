import 'package:alex_apps_taks/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 150.h,
              ),
              Image.asset(
                AppAssets.logoPath,
                width: 120.w,
                height: 78.h,
              ),
              SizedBox(
                height: 45.h,
              ),
              Text(
                "تسجيل الدخول",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
