import 'package:alex_apps_taks/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderLoadingDetails extends StatelessWidget {
  final String detail;
  final String iconText;
  final IconData icon;
  const OrderLoadingDetails({
    super.key,
    required this.detail,
    required this.iconText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(detail,
              style: TextStyle(fontSize: 14.sp, color: AppColors.blueishColor)),
        ),
        Spacer(),
        Text(
          iconText,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Icon(
          icon,
        ),
      ],
    );
  }
}
