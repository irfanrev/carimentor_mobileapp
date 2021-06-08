import 'package:flutter/material.dart';

class NotifScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Notification'),
      ),
      body: Center(
        child: Text('notif'),
      ),
    );
  }
}
