import 'package:alex_apps_taks/views/home/widgets/package_list_view_item.dart';
import 'package:alex_apps_taks/views/order_details/order_details_view.dart';
import 'package:flutter/material.dart';

class OrdersListView extends StatelessWidget {
  const OrdersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return InkWell(
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return OrderDetailsView();
              }));
              // Navigator.of(context).pushNamed(OrderDetailsView.routeName);
              // Navigator.pushNamed(context, OrderDetailsView.routeName);
            },
            child: PackageListViewItem());
      },
    );
  }
}
