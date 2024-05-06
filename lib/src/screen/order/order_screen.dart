import 'package:applogistic/src/screen/order/order_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderScreen extends StatelessWidget {
  final OrderController _orderController =
  Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    var order = _orderController.order;

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
                Text('Order No 1'),
              ],
            ),
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
                        Text(
                          'Sub Total: ${item['subTotal']}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text('Taxes 18%: 100000'),
                        Text('Delivery Charges: 100000'),
                        Text('Grand Total: 3000000'),
                      ],
                    );
                  } else {
                    return SizedBox
                        .shrink(); // Handle null case by returning an empty widget
                  }
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Accpet',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
