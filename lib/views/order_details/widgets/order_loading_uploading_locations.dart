import 'package:alex_apps_taks/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderLoadingUploadingLocations extends StatelessWidget {
  const OrderLoadingUploadingLocations({
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
              Icon(Icons.location_on_rounded),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "موقع التنزيل",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "1097 Deju Ridge",
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
              Icon(Icons.location_on_rounded),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "موقع التحميل",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "1097 Deju Ridge ",
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
