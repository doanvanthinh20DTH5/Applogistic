import 'package:applogistic/src/screen/login/login_email/login_email_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginEmailScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginEmailScreen> {
  final LoginEmailController _loginController = Get.put(LoginEmailController());

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
                  'Email',
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
                onChanged: (value) => _loginController.setEmail(value),
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
