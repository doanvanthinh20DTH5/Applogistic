import 'package:applogistic/src/screen/grn/grn_open_items_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class GrnOpenItemsScreen extends StatefulWidget {
  @override
  _GrnOpenItemsScreenState createState() => _GrnOpenItemsScreenState();
}

class _GrnOpenItemsScreenState extends State<GrnOpenItemsScreen> {
  final GrnOpenItemsController _grnOpenItemsController = Get.put(GrnOpenItemsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Obx(() => ListView.builder(
        itemCount: _grnOpenItemsController.items.length,
        itemBuilder: (context, index) {
          var item = _grnOpenItemsController.items[index];
          var received = _grnOpenItemsController.received[index];

          return ListTile(
            title: Text('Item ${index + 1}.'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Quantity: $item'),
                    Text('Received: $received'),
                  ],
                ),
                SizedBox(height: 10),
                Text('Received'),
              ],
            ),
          );
        },
      )),
    );
  }
}
