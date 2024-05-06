import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:applogistic/src/screen/order/order_detail_controller.dart';

class OrderDetailScreen extends StatelessWidget {
  final OrderDetailController _orderDetailController = Get.put(OrderDetailController());


  @override
  @override
  Widget build(BuildContext context) {
    var order = _orderDetailController.order;

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
                Text('Order No ${order['orderNo']}'),
              ],
            ),
            SizedBox(height: 20),
            Text('Order Status: ${order['status']}'),
            SizedBox(height: 20),
            Text('Order for: ${order['orderFor']}'),
            Text('Order at: ${order['orderAt']}'),
            Text('Order Date: ${order['orderDate']}'),
            Text('Order Time: ${order['orderTime']}'),
            SizedBox(height: 20),
            Text('Items', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: (order['items'] as List<dynamic>?)?.length ?? 0,
                itemBuilder: (context, index) {
                  var items = order['items'] as List<dynamic>?;

                  if (items != null && items.isNotEmpty) {
                    var item = items[index] as Map<String, dynamic>;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name: ${item['name']}'),
                        Text('Rate: ${item['rate']}'),
                        Text('Quantity: ${item['quantity']}'),
                        Text('Sub Total: ${item['subTotal']}'),
                        SizedBox(height: 10),
                      ],
                    );
                  } else {
                    return SizedBox.shrink(); // Handle null case by returning an empty widget
                  }
                },
              ),
            ),
            Text('Taxes 18%: 100000'),
            Text('Delivery Charges: 100000'),
            Text('Grand Total: 3000000'),
            SizedBox(height: 20),
            Text('Order Status: ${order['status']}', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

}
