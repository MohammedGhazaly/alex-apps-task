import 'package:alex_apps_taks/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersListViewItemSenderNameAndDestination extends StatelessWidget {
  const OrdersListViewItemSenderNameAndDestination({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "أبو فهد عبد العزيز",
          textDirection: TextDirection.rtl,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "1097 Deju Ridge  ",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.sp,
                ),
              ),
            ),
            Container(
              width: 10.h,
              height: 10.h,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50.r)),
            )
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            margin: EdgeInsets.only(right: 4),
            width: 1,
            height: 20.h,
            color: Colors.grey,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "1283 Cunema Extension",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.sp,
                ),
              ),
            ),
            Container(
              width: 10.h,
              height: 10.h,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(50.r)),
            )
          ],
        )
      ],
    );
  }
}
