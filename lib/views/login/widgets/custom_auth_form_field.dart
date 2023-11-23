import 'package:alex_apps_taks/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAuthFormField extends StatelessWidget {
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const CustomAuthFormField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.suffixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      cursorColor: AppColors.primaryColor,
      style: TextStyle(
        fontSize: 16.sp,
        color: Color.fromARGB(255, 118, 118, 118),
      ),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText,
        contentPadding: EdgeInsets.all(12.h),
        border: buildMainBorder(),
        enabledBorder: buildMainBorder(),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 2,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildMainBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(
        color: AppColors.greyColor1,
        width: 1,
      ),
    );
  }
}
