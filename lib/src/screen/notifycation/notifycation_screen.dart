import 'package:applogistic/src/screen/notifycation/notifycation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final NotificationController _notificationController = Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text('Thông báo'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _notificationController.setMessage('Đặt hàng thành công');
              },
              child: Text('Đặt hàng thành công'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _notificationController.setMessage('Thay đổi thành công');
              },
              child: Text('Thay đổi thành công'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _notificationController.setMessage('Hệ thống bảo trì');
              },
              child: Text('Hệ thống bảo trì'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
