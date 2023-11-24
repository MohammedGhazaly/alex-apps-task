import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsBottomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  const OrderDetailsBottomButton({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 9.w),
          height: 60.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0, 2),
                blurRadius: 5,
              )
            ],
          ),
          child: Center(
            child: Icon(icon),
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(text)
      ],
    );
  }
}
