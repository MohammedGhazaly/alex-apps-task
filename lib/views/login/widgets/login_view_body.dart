import 'package:alex_apps_taks/utils/assets.dart';
import 'package:alex_apps_taks/utils/colors.dart';
import 'package:alex_apps_taks/views/login/widgets/custom_auth_form_field.dart';
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
              ),
              SizedBox(
                height: 54.h,
              ),
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: CustomAuthFormField(
                            hintText: "ادخل رقم الجول",
                            textInputType: TextInputType.number,
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 55.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                width: 1,
                                color: AppColors.greyColor1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
