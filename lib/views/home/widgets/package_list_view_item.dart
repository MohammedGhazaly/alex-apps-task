import 'package:alex_apps_taks/utils/colors.dart';
import 'package:alex_apps_taks/views/home/widgets/orders_list_view_item_bottom.dart';
import 'package:alex_apps_taks/views/home/widgets/orders_list_view_item_name_and_destination.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PackageListViewItem extends StatelessWidget {
  const PackageListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      margin: EdgeInsets.symmetric(horizontal: 27.w, vertical: 8.h),
      // height: 500.h,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.r,
                  vertical: 2.r,
                ),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Text(
                  "السعر",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.darkColor1,
                  ),
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Expanded(
                child: OrdersListViewItemSenderNameAndDestination(),
              ),
              SizedBox(
                width: 8.w,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.asset(
                  "assets/images/package.png",
                  width: 60.h,
                  height: 50.h,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 50.w),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                " أريد توصيل شحنه خشب الي ميناء ",
                textDirection: TextDirection.rtl,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                // textAlign: TextAlign.end,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          SizedBox(
            height: 8.h,
          ),
          OrdersListViewItemBottom()
        ],
      ),
    );
  }
}
