import 'package:alex_apps_taks/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerDetailsTile extends StatelessWidget {
  const CustomerDetailsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              offset: Offset(0, 2),
              blurRadius: 5,
            )
          ]),
      child: ListTile(
        title: Text(
          "أبو فهد عبد العزيز",
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
        ),
        leading: CircleAvatar(
          backgroundImage: AssetImage(AppAssets.person),
        ),
        subtitle: Text(
          "السعودية",
          style: TextStyle(
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
