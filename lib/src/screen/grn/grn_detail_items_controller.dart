import 'package:get/get.dart';

class GrnDetailItemsController extends GetxController {
  var order = {
    'orderNo': '1',
    'items': [
      {'name': 'Product A', 'rate': '1000000', 'quantity': '2', 'subTotal': '2000000'},
    ],
    'cost': '3500000',
    'status': 'Pending',
  };
}
