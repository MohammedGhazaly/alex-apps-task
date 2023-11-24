import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalDividerLine extends StatelessWidget {
  const HorizontalDividerLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      height: 1,
      width: double.infinity,
      color: Colors.grey.withOpacity(0.35),
    );
  }
}
