import 'package:alex_apps_taks/utils/colors.dart';
import 'package:alex_apps_taks/views/home/data/tabs_data.dart';
import 'package:alex_apps_taks/views/home/widgets/orders_list_view.dart';
import 'package:alex_apps_taks/views/home/widgets/package_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 27.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Color(0xffECEAEC),
              ),
              child: TabBar(
                indicatorColor: Colors.transparent,
                dividerColor: Colors.transparent,
                // indicatorPadding: EdgeInsets.all(50.r),
                indicatorSize: TabBarIndicatorSize.tab,

                padding: EdgeInsets.all(8.r),
                labelPadding:
                    EdgeInsets.symmetric(horizontal: 16.r, vertical: 8.r),
                controller: tabController,
                isScrollable: true,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    12.r,
                  ),
                ),
                tabs: tabs,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  OrdersListView(),
                  Center(child: Text("2")),
                  Center(child: Text("3")),
                  Center(child: Text("4")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
