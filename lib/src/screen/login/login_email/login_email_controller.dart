import 'package:get/get.dart';

class LoginEmailController extends GetxController {
  var email = ''.obs;

  void setEmail(String value) {
    email.value = value;
  }

  void continueAction() {
    if (email.value.isNotEmpty) {
      print('Email entered: ${email.value}');
    } else {
      print('Please enter an email.');
    }
  }
}