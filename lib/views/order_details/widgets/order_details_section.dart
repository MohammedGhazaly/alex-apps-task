import 'package:alex_apps_taks/views/order_details/widgets/horizontal_divider_line.dart';
import 'package:alex_apps_taks/views/order_details/widgets/order_loading_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsSection extends StatelessWidget {
  const OrderDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HorizontalDividerLine(),
        SizedBox(
          height: 15.h,
        ),
        OrderLoadingDetails(
          detail: "100 طن",
          iconText: "وزن الشحنة",
          icon: Icons.inventory,
        ),
        SizedBox(
          height: 15.h,
        ),
        HorizontalDividerLine(),
        SizedBox(
          height: 15.h,
        ),
        OrderLoadingDetails(
          detail: "60 صندوق",
          iconText: " عدد الحاويات",
          icon: Icons.inventory,
        ),
        SizedBox(
          height: 15.h,
        ),
        HorizontalDividerLine(),
        SizedBox(
          height: 15.h,
        ),
        OrderLoadingDetails(
          detail: "40 شاحنة",
          iconText: "عدد المركبات",
          icon: Icons.local_shipping_rounded,
        ),
        SizedBox(
          height: 15.h,
        ),
        HorizontalDividerLine(),
        SizedBox(
          height: 15.h,
        ),
        OrderLoadingDetails(
          detail: "دينا - دينا بطحاء",
          iconText: "نوع المركبات",
          icon: Icons.local_shipping_rounded,
        ),
        SizedBox(
          height: 15.h,
        ),
        HorizontalDividerLine(),
      ],
    );
  }
}
