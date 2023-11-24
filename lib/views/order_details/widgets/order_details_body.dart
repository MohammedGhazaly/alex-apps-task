import 'package:alex_apps_taks/views/order_details/widgets/order_details_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsBody extends StatelessWidget {
  const OrderDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 35.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: OrderDetailsImageSlider(),
        ),
      ],
    );
  }
}
