import 'package:get/get.dart';

class OrderMainController extends GetxController {
  var selectedPage = 0.obs;

  void setPage(int index) {
    selectedPage.value = index;
  }
}
