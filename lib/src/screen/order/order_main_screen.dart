
import 'package:applogistic/src/screen/order/order_items_screen.dart';
import 'package:applogistic/src/screen/order/order_main_controller.dart';
import 'package:applogistic/src/screen/order/order_open_order_screen.dart';
import 'package:applogistic/src/screen/order/order_order_alert_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderMainScreen extends StatefulWidget {
  @override
  _OrderMainScreenState createState() => _OrderMainScreenState();
}

class _OrderMainScreenState extends State<OrderMainScreen> {
  final OrderMainController grnController = Get.put(OrderMainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text('order'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  grnController.setPage(0);
                },
                child: Text('order Alert'),
              ),
              ElevatedButton(
                onPressed: () {
                  grnController.setPage(1);
                },
                child: Text('Open Order'),
              ),
              ElevatedButton(
                onPressed: () {
                  grnController.setPage(2);
                },
                child: Text('Order Items'),
              ),
            ],
          ),
          Expanded(
            child: Obx(() {
              switch (grnController.selectedPage.value) {
                case 0:
                  return OrderOrderAlertScreen();
                case 1:
                  return OrderOpenOrderScreen();
                case 2:
                  return OrderItemsScreen();
                default:
                  return Container();
              }
            }),
          ),
        ],
      ),
    );
  }
}
