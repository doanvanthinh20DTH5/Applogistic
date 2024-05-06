import 'package:applogistic/src/screen/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final RegisterController _userController = Get.put(RegisterController());

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
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Username: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                onChanged: (value) => _userController.setUsername(value),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email: ',
                ),
              ),
              TextField(
                onChanged: (value) => _userController.setEmail(value),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password: ',
                ),
              ),
              TextField(
                onChanged: (value) => _userController.setPassword(value),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter the password: ',
                ),
              ),
              TextField(
                onChanged: (value) => _userController.setConfirmPassword(value),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _userController.register(),
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}