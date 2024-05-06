import 'package:applogistic/src/screen/grn/grn_controller.dart';
import 'package:applogistic/src/screen/grn/grn_disputed_screen.dart';
import 'package:applogistic/src/screen/grn/grn_open_items_screen.dart';
import 'package:applogistic/src/screen/grn/grn_open_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GrnScreen extends StatefulWidget {
  @override
  _GrnScreenState createState() => _GrnScreenState();
}

class _GrnScreenState extends State<GrnScreen> {
  final GRNController grnController = Get.put(GRNController());

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
          title: Text('GRN'),
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
                child: Text('Disputed'),
              ),
              ElevatedButton(
                onPressed: () {
                  grnController.setPage(1);
                },
                child: Text('Open'),
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
                  return DisputedScreen();
                case 1:
                  return GrnOpenScreen();
                case 2:
                  return GrnOpenItemsScreen();
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
