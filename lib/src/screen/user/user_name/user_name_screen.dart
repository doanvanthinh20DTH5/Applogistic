import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user_name_controller.dart';

class UserNameScreen extends StatelessWidget {
  final UserNameController _menuController = Get.put(UserNameController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Orders',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: _menuController.orderItems.map((item) {
                return IconButton(
                  icon: Icon(Icons.circle),
                  onPressed: () => _menuController.handleMenuItemTap(item),
                  tooltip: item,
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'GRN',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: _menuController.grnItems.map((item) {
                return IconButton(
                  icon: Icon(Icons.circle),
                  onPressed: () => _menuController.handleMenuItemTap(item),
                  tooltip: item,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}