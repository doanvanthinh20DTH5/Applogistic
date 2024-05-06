import 'package:applogistic/src/screen/login/login_otp/login_otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginOtpScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginOtpScreen> {
  final LoginOtpController _loginController = Get.put(LoginOtpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey ,
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  'OTP',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                onChanged: (value) => _loginController.setOtp(value),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _loginController.continueAction(),
              child: Padding(
                padding: EdgeInsets.zero,
                child: Text('Continue'),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(300, 48)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
