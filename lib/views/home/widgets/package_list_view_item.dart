import 'package:alex_apps_taks/utils/colors.dart';
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
                child: Column(
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
                ),
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
          Row(
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
          )
        ],
      ),
    );
  }
}
