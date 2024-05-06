import 'package:applogistic/src/screen/order/oder_detail_item_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetailItemScreen extends StatefulWidget {
  @override
  _OrderDetailItemScreenState createState() => _OrderDetailItemScreenState();
}

class _OrderDetailItemScreenState extends State<OrderDetailItemScreen> {
  final OrderDetailItemController _orderDetailController = Get.put(OrderDetailItemController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Order Items'),
      ),
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
                Text('Detail Order Items'),
              ],
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextField(
                onChanged: (value) => _orderDetailController.name.value = value,
                decoration: InputDecoration(
                  labelText: 'Name',
                  contentPadding: EdgeInsets.all(12.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextField(
                onChanged: (value) => _orderDetailController.rate.value = value,
                decoration: InputDecoration(
                  labelText: 'Rate',
                  contentPadding: EdgeInsets.all(12.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextField(
                onChanged: (value) => _orderDetailController.quantity.value = value,
                decoration: InputDecoration(
                  labelText: 'Quantity',
                  contentPadding: EdgeInsets.all(12.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Cost'),
                Obx(() => Text('${_orderDetailController.cost.value}')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}