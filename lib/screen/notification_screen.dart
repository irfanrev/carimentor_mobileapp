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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat_rounded,
              size: 40,
            ),
            SizedBox(
              height: 20,
            ),
            Text('No Dicsussion'),
          ],
        ),
      ),
    );
  }
}
