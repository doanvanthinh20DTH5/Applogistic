import 'package:get/get.dart';

class OrderOrderAlertController extends GetxController {
  final orders = [
    {
      'orderNo': 'Order No 1',
      'cost': '100 USD',
      'date': '15-6-2023',
      'time': '10:00 AM',
      'status': 'Pending',
    },
  ].obs;
}
