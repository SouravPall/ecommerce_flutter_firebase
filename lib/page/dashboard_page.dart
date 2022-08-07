import 'dart:ffi';

import 'package:ecommerce_flutter_firebase/models/dashboard_item.dart';
import 'package:ecommerce_flutter_firebase/widgets/dashboard_item_view.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemCount: dashboardItems.length,
        itemBuilder: (context, index) => DashboardItemView(
          item: dashboardItems[index],
          onPressed: (value) {},
        ),
      ),
    );
  }
}
