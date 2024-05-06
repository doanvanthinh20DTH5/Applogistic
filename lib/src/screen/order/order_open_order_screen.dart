import 'package:applogistic/src/screen/order/order_open_order_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderOpenOrderScreen extends StatefulWidget {
  @override
  _OrderOpenOrderScreenState createState() => _OrderOpenOrderScreenState();
}

class _OrderOpenOrderScreenState extends State<OrderOpenOrderScreen> {
  final OrderOpenOrderController _orderController = Get.put(OrderOpenOrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

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
