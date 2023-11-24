import 'package:alex_apps_taks/utils/assets.dart';
import 'package:alex_apps_taks/utils/colors.dart';
import 'package:alex_apps_taks/views/order_details/widgets/customer_details_tile.dart';
import 'package:alex_apps_taks/views/order_details/widgets/horizontal_divider_line.dart';
import 'package:alex_apps_taks/views/order_details/widgets/order_details_image_slider.dart';
import 'package:alex_apps_taks/views/order_details/widgets/order_loading_uploading_locations.dart';
import 'package:alex_apps_taks/views/order_details/widgets/order_loading_uploading_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsBody extends StatelessWidget {
  const OrderDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 35.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: OrderDetailsImageSlider(),
          ),
          SizedBox(
            height: 24.h,
          ),
          CustomerDetailsTile(),
          SizedBox(
            height: 18.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: OrderLoadingUploadingLocations(),
          ),
          SizedBox(
            height: 25.h,
          ),
          HorizontalDividerLine(),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: OrderLoadingUploadingTime(),
          )
        ],
      ),
    );
  }
}
