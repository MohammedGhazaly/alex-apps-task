import 'package:alex_apps_taks/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderLoadingUploadingTime extends StatelessWidget {
  const OrderLoadingUploadingTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.calendar_month_rounded,
                color: AppColors.primaryColor,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "وقت التنزيل",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "04 Jul 2021",
                      style: TextStyle(
                          fontSize: 12.sp, color: AppColors.blueishColor),
                    ),
                    Text(
                      "11:48",
                      style: TextStyle(
                          fontSize: 12.sp, color: AppColors.blueishColor),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.calendar_month_rounded,
                color: AppColors.primaryColor,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "وقت التحميل",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "04 Jul 2021",
                      style: TextStyle(
                          fontSize: 12.sp, color: AppColors.blueishColor),
                    ),
                    Text(
                      "11:48",
                      style: TextStyle(
                          fontSize: 12.sp, color: AppColors.blueishColor),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
