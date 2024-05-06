import 'package:applogistic/src/screen/order/order_items_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderItemsScreen extends StatefulWidget {
  @override
  _OrderItemsScreenState createState() => _OrderItemsScreenState();
}

class _OrderItemsScreenState extends State<OrderItemsScreen> {
  final OrderItemsController itemsController = Get.put(OrderItemsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Items List'),
      ),
      body: Center(
        child: Obx(() => ListView.builder(
          itemCount: itemsController.itemList.length,
          itemBuilder: (context, index) {
            final item = itemsController.itemList[index];
            return ListTile(
              title: Text(item['name'] ?? 'Unknown'),
              subtitle: Text(item['quantity'] ?? 'Unknown'),
            );
          },
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Thêm một mục mới khi nhấn vào nút
          itemsController.addItem('New Item', '1pkt');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}