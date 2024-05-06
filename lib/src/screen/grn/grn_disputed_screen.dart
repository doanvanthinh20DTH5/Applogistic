import 'package:applogistic/src/screen/grn/grn_disputed_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisputedScreen extends StatefulWidget {
  @override
  _DisputedScreenState createState() => _DisputedScreenState();
}

class _DisputedScreenState extends State<DisputedScreen> {
  final DisputedController disputedController = Get.put(DisputedController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Order No: ${disputedController.orderNo}'),
                    SizedBox(height: 10),
                    Text('Receiving date: ${disputedController.receivingDate}'),
                    SizedBox(height: 10),
                    Text('Receiving time: ${disputedController.receivingTime}'),
                    SizedBox(height: 20),
                    Text(
                      disputedController.amount,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20), // Khoảng cách giữa hai phần tử
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Center(
                  child: Text(
                    'QR CODE',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
