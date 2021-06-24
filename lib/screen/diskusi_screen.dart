import 'package:flutter/material.dart';

class Diskusi extends StatefulWidget {
  @override
  _DiskusiState createState() => _DiskusiState();
}

class _DiskusiState extends State<Diskusi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Disusi Bersama Mentor'),
        automaticallyImplyLeading: false,
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
