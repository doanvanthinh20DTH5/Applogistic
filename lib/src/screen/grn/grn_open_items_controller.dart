import 'package:get/get.dart';

class GrnOpenItemsController extends GetxController {
  final items = [
    '21,111,0d',
    '68,000d',
  ].obs;

  final received = [
    'Received',
    'Received',
  ].obs;

  void updateItems(List<String> newItems) {
    items.assignAll(newItems);
  }

  void updateReceived(List<String> newReceived) {
    received.assignAll(newReceived);
  }
}
