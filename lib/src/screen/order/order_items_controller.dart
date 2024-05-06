import 'package:get/get.dart';

class OrderItemsController extends GetxController {
  final itemList = [
    {'name': 'Items 1', 'quantity': '5pkt'},
    {'name': 'Items 2', 'quantity': '5pkt'},
    {'name': 'Items 3', 'quantity': '5pkt'},
  ].obs;

  void addItem(String name, String quantity) {
    itemList.add({'name': name, 'quantity': quantity});
  }
}