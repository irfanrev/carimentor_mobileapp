import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_submission/models/marketing.dart';
import 'package:flutter_submission/models/programming.dart';
import 'package:flutter_submission/screen/desain_screen.dart';
import 'package:flutter_submission/screen/diskusi_screen.dart';
import 'package:flutter_submission/screen/editor_screen.dart';
import 'package:flutter_submission/screen/marketing_screen.dart';
import 'package:flutter_submission/screen/notification_screen.dart';
import 'package:flutter_submission/screen/programming_screen.dart';
import 'package:flutter_submission/screen/semuakategori_screen.dart';
import 'package:flutter_submission/screen/topmentor_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> listEvent = [
    'assets/1.jpeg',
    'assets/2.jpeg',
    'assets/3.jpeg',
    'assets/4.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: 50.0,
                  left: 20.0,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                            child: Image.asset('assets/avatar.png')),
                      ),
                      Padding(padding: EdgeInsets.only(left: 20.0)),
                    ],
                  )),
              Positioned(
                  top: 50.0,
                  right: 20.0,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotifScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(Icons.notifications_none_outlined,
                              color: Colors.indigo, size: 30.0),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10.0)),
                    ],
                  ))
            ],
          )),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Stack(
              children: [
                Positioned(
                  left: 15,
                  top: 10,
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.indigo[400], shape: BoxShape.circle),
                  ),
                ),
                Positioned(
                  left: 150,
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.indigo[700], shape: BoxShape.circle),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello Irfan,',
                              style: GoogleFonts.poppins(fontSize: 16),
                            ),
                            Text(
                              'Ayo segera cari mentor yang terbaik di bidangmu!',
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3.0,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Cari mentormu!',
                                    icon: Icon(Icons.search),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.menu,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.indigo,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      'Mentormu Sekarang',
                      style: GoogleFonts.poppins(
                          fontSize: 18, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                          image: DecorationImage(
                              image: AssetImage('assets/desain4.jpeg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      title: Text(
                        'Angga Rizky',
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.black),
                      ),
                      subtitle: Text(
                        'UI/UX Design',
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: Colors.black),
                      ),
                      trailing: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                              icon: Icon(
                                Icons.chat_rounded,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Diskusi()));
                              })),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Kategori',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllCategory()));
                    },
                    child: Text(
                      'Lihat Semua >',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DesainScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        //color: Colors.indigo,
                        border: Border.all(width: 3, color: Colors.indigo),
                        // gradient: LinearGradient(
                        //     colors: [Colors.indigo[600], Colors.indigo],
                        //     begin: Alignment.centerLeft,
                        //     end: Alignment.centerRight),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.design_services,
                              size: 35, color: Colors.indigo),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text('Desain',
                              style: GoogleFonts.poppins(
                                  color: Colors.indigo, fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProgrammingScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 3, color: Colors.indigo),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.computer_rounded,
                            size: 35,
                            color: Colors.indigo,
                          ),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text('Programming',
                              style: GoogleFonts.poppins(
                                  color: Colors.indigo, fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MarketingScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 3, color: Colors.indigo),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.money,
                            size: 35,
                            color: Colors.indigo,
                          ),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text('Marketing',
                              style: GoogleFonts.poppins(
                                  color: Colors.indigo, fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditorScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 3, color: Colors.indigo),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.movie_creation_rounded,
                            size: 35,
                            color: Colors.indigo,
                          ),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text('Editor',
                              style: GoogleFonts.poppins(
                                  color: Colors.indigo, fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllCategory()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.indigo),
                      child: Icon(Icons.arrow_forward_ios_rounded,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mentor Terbaik',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AllCategory())),
                    child: Text(
                      'Lihat Semua >',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                width: MediaQuery.of(context).size.width,
                height: 350,
                child: TopMentorScreen()),

            SizedBox(
              height: 30,
            ),
            //menu terakhir
          ],
        ),
      ),
    );
  }
}
