import 'package:alex_apps_taks/utils/colors.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountryCodeField extends StatefulWidget {
  const CountryCodeField({
    super.key,
  });

  @override
  State<CountryCodeField> createState() => _CountryCodeFieldState();
}

class _CountryCodeFieldState extends State<CountryCodeField> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode countryCode =
      CountryCode(name: "Saudi Arabia", code: "SA", dialCode: "+996");
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12.r),
      onTap: () async {
        final code = await countryPicker.showPicker(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r)),
            context: context);

        setState(() {
          countryCode = code ?? countryCode;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        height: 55.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            width: 1,
            color: AppColors.greyColor1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(countryCode.dialCode),
            countryCode.flagImage(),
          ],
        ),
      ),
    );
  }
}
