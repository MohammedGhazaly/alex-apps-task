import 'package:alex_apps_taks/utils/assets.dart';
import 'package:alex_apps_taks/utils/colors.dart';
import 'package:alex_apps_taks/views/custom_bottom_nav_bar/custom_bottom_nav_bar.dart';
import 'package:alex_apps_taks/views/login/widgets/country_code_field.dart';
import 'package:alex_apps_taks/views/login/widgets/custom_auth_button.dart';
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          child: CountryCodeField(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomAuthFormField(
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        size: 30.sp,
                        color: Color.fromARGB(255, 118, 118, 118),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.visibility_off_rounded,
                          size: 30.sp,
                          color: Color.fromARGB(255, 118, 118, 118),
                        ),
                      ),
                      hintText: "ادخل رقم الجول",
                      textInputType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Text(
                      "هل نسيت كلمة المرور؟",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: AppColors.darkColor1,
                      ),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    SizedBox(
                      height: 50.h,
                      child: CustomAuthButton(
                          text: "تسجيل الدخول",
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              CustomBottomNavBar.routeName,
                            );
                          }),
                    ),
                    SizedBox(
                      height: 160.h,
                    ),
                    Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "ليس لديك حساب؟",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: AppColors.greyColor2,
                            ),
                          ),
                          TextSpan(
                            text: " سجل الان",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
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
