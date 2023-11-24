import 'package:alex_apps_taks/utils/colors.dart';
import 'package:alex_apps_taks/views/order_details/widgets/order_details_bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsBottomSection extends StatelessWidget {
  const OrderDetailsBottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            16.r,
          ),
          topRight: Radius.circular(
            16.r,
          ),
        ),
        border: Border.all(
          color: Colors.grey.withOpacity(0.35),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 8.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.expand_less,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text("تحديد السعر بين العميل والسائل"),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: "السعر الحالي "),
                TextSpan(
                  text: "2500",
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: OrderDetailsBottomButton(
                    icon: Icons.close_rounded, text: "رفض"),
              ),
              Expanded(
                child: OrderDetailsBottomButton(
                    icon: Icons.check_rounded, text: "موافقة"),
              ),
              Expanded(
                child: OrderDetailsBottomButton(
                    icon: Icons.payment_rounded, text: "قدم عرض"),
              ),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
        ],
      ),
    );
  }
}
