import 'package:alex_apps_taks/views/home/widgets/package_list_view_item.dart';
import 'package:flutter/material.dart';

class OrdersListView extends StatelessWidget {
  const OrdersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return PackageListViewItem();
      },
    );
  }
}
