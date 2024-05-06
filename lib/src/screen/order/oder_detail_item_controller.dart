import 'package:get/get.dart';

class OrderDetailItemController extends GetxController {
  var name = ''.obs;
  var rate = ''.obs;
  var quantity = ''.obs;
  var cost = ''.obs;

  void updateDetail({required String name, required String rate, required String quantity, required String cost}) {
    this.name.value = name;
    this.rate.value = rate;
    this.quantity.value = quantity;
    this.cost.value = cost;
  }
}
