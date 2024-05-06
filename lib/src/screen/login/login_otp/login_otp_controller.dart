import 'package:get/get.dart';

class LoginOtpController extends GetxController {
  var otp = ''.obs;

  void setOtp(String value) {
    otp.value = value;
  }

  void continueAction() {
    if (otp.value.isNotEmpty) {
      print('Otp entered: ${otp.value}');
    } else {
      print('Please enter an otp.');
    }
  }
}