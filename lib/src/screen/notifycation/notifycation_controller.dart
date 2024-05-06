import 'package:get/get.dart';

class NotificationController extends GetxController {
  var message = ''.obs;

  void setMessage(String value) {
    message.value = value;
  }
}
