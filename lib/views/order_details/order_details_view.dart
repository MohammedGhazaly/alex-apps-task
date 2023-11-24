import 'package:alex_apps_taks/views/order_details/widgets/order_details_body.dart';
import 'package:flutter/material.dart';

class OrderDetailsView extends StatelessWidget {
  static String routeName = "orderDetailsView";
  const OrderDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تفاصيل الطلب"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: OrderDetailsBody(),
    );
  }
}
