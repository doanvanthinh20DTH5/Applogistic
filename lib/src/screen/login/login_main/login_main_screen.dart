import 'package:applogistic/src/screen/login/login_main/login_main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginMainScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginMainScreen> {
  final LoginMainController _userController = Get.put(LoginMainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                onChanged: (value) => _userController.setEmail(value),
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                onChanged: (value) => _userController.setPassword(value),
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _userController.login(),
                child: Text('Login'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      // Handle register action
                      print('Register button pressed');
                    },
                    child: Text('Register'),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  // Handle forgot password action
                  print('Forgot password button pressed');
                },
                child: Text('Forgot password?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}