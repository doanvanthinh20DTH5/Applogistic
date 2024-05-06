import 'package:applogistic/src/screen/grn/grn_open_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GrnOpenScreen extends StatefulWidget {
  @override
  _GrnOpenScreenState createState() => _GrnOpenScreenState();
}

class _GrnOpenScreenState extends State<GrnOpenScreen> {
  final GrnOpenController orderController = Get.put(GrnOpenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: ListView.builder(
        itemCount: orderController.orders.length,
        itemBuilder: (context, index) {
          var order = orderController.orders[index];

          if (order['id'] != null) {
            // Hiển thị thông tin đơn hàng
            return ListTile(
              title: Text('Order ${order['id']}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Date: ${order['date']}'),
                  Text('Time: ${order['time']}'),
                ],
              ),
            );
          } else if (order['details'] != null) {
            return ListTile(
              title: Text('Details Information'),
              subtitle: Text(order['details'].toString()),
            );
          }

          return Container();
        },
      ),
    );
  }
}