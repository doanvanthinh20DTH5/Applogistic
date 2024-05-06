import 'package:get/get.dart';

class UserNameController extends GetxController {
  var orderItems = [
    'Order Alert',
    'Open Order',
    'Order Items',
  ];

  var grnItems = [
    'Disputed GRN',
    'Open GRN',
    'Open Item GRN',
  ];

  void handleMenuItemTap(String item) {
    print('Selected: $item');
  }
}
