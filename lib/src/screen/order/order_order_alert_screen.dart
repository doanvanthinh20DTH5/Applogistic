import 'package:applogistic/src/screen/order/order_open_order_controller.dart';
import 'package:applogistic/src/screen/order/order_order_alert_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderOrderAlertScreen extends StatefulWidget {
  @override
  _OrderOrderAlertScreenState createState() => _OrderOrderAlertScreenState();
}

class _OrderOrderAlertScreenState extends State<OrderOrderAlertScreen> {
  final OrderOrderAlertController _orderController = Get.put(OrderOrderAlertController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text('Order'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle order alert
                  },
                  child: Text('Order Alert'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle open order
                  },
                  child: Text('Open Order'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle order items
                  },
                  child: Text('Order Items'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(_orderController.orders[0]['orderNo']!),
                    Text(_orderController.orders[0]['date']!),
                    Text(_orderController.orders[0]['time']!),
                    SizedBox(height: 20),
                    IconButton(
                      icon: Icon(Icons.shopping_cart),
                      onPressed: () {
                        // Handle delivery
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(_orderController.orders[0]['cost']!),
                    Text(_orderController.orders[0]['status']!),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Order Place: ${_orderController.orders[0]['orderPlace']}'),
                Text('Delivery Date: ${_orderController.orders[0]['deliveryDate']}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
