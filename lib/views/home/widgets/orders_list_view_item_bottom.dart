import 'package:alex_apps_taks/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersListViewItemBottomSection extends StatelessWidget {
  const OrdersListViewItemBottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: Colors.grey.withOpacity(0.25),
            ),
            color: Colors.white,
          ),
          child: Center(
            child: Icon(
              Icons.close,
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              foregroundColor: AppColors.darkColor1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  16.r,
                ),
              )),
          onPressed: () {},
          child: Text(
            "التفاصيل",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  "04 Jul 2021",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Color(0xff7D91A3),
                    fontSize: 14.sp,
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Icon(
                Icons.calendar_today_rounded,
                size: 20.sp,
                color: Color(0xff7D91A3),
              )
            ],
          ),
        )
      ],
    );
  }
}
