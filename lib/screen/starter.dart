import 'package:flutter/material.dart';
import 'package:flutter_submission/screen/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Starter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ayo Cari Mentor Terbaikmu!',
              style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Aplikasi Mentorku akan membantu kamu untuk mencari mentor terbaik sesuai dengan fashion yang kamu mau.',
              style: GoogleFonts.poppins(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            Container(
              height: 200,
              child: Image.asset('assets/mentor.png'),
            ),
            SizedBox(
              height: 35,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Container(
                padding: EdgeInsets.all(20.0),
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Get Started',
                  style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
