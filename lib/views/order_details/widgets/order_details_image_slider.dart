import 'package:alex_apps_taks/utils/assets.dart';
import 'package:alex_apps_taks/utils/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OrderDetailsImageSlider extends StatefulWidget {
  const OrderDetailsImageSlider({super.key});

  @override
  State<OrderDetailsImageSlider> createState() =>
      _OrderDetailsImageSliderState();
}

class _OrderDetailsImageSliderState extends State<OrderDetailsImageSlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (context, itemIndex, pageViewIndex) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Image.asset(
                AppAssets.pakcage,
                width: double.infinity,
                height: 200.h,
                fit: BoxFit.cover,
              ),
            );
          },
          options: CarouselOptions(
            onPageChanged: ((index, reason) {
              setState(() {
                activeIndex = index;
              });
            }),
            enlargeCenterPage: true,
            pageSnapping: true,
            // padEnds: true,
            viewportFraction: 1,
            // enlargeFactor: 0.5,
            height: 200.h,
            clipBehavior: Clip.none,
            enableInfiniteScroll: true,
            autoPlay: false,
            // autoPlayInterval: const Duration(seconds: 4),
            scrollDirection: Axis.horizontal,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        AnimatedSmoothIndicator(
          effect: ColorTransitionEffect(
            radius: 8.r,
            dotWidth: 12.w,
            dotHeight: 12.w,
            dotColor: Colors.grey.withOpacity(0.5),
            activeDotColor: AppColors.primaryColor,
          ),
          activeIndex: activeIndex,
          count: 5,
        )
      ],
    );
  }
}
