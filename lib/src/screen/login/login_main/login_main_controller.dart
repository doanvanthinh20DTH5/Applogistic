import 'package:get/get.dart';

class LoginMainController extends GetxController {
  final RxString email = ''.obs;
  final RxString password = ''.obs;

  void setEmail(String value) {
    email.value = value;
  }

  void setPassword(String value) {
    password.value = value;
  }

  void login() {
    print('Login button pressed');
  }
}