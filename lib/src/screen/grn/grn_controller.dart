import 'package:get/get.dart';

class GRNController extends GetxController {
  var selectedPage = 0.obs;

  void setPage(int index) {
    selectedPage.value = index;
  }
}
