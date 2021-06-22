import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_submission/screen/desain_screen.dart';
import 'package:flutter_submission/screen/notification_screen.dart';
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
                              color: Colors.red, size: 30.0),
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
                        color: Colors.deepOrange, shape: BoxShape.circle),
                  ),
                ),
                Positioned(
                  left: 150,
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
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
                                color: Colors.red,
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
                color: Colors.red,
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
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.chat_rounded,
                          color: Colors.white,
                        ),
                      ),
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
                  Text(
                    'Lihat Semua >',
                    style: GoogleFonts.poppins(fontSize: 16),
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
                        color: Colors.red,
                        gradient: LinearGradient(
                            colors: [Colors.red[600], Colors.orange],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.design_services, size: 35),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text('Desain',
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.red,
                        gradient: LinearGradient(
                            colors: [Colors.red[600], Colors.orange],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.computer_rounded, size: 35),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text('Programming',
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.red,
                        gradient: LinearGradient(
                            colors: [Colors.red[600], Colors.orange],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.money, size: 35),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text('Marketing',
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.red,
                        gradient: LinearGradient(
                            colors: [Colors.red[600], Colors.orange],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.movie_creation_rounded, size: 35),
                          Padding(padding: EdgeInsets.only(left: 8)),
                          Text('Editor',
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red),
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
                    'Feedback',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Lihat Semua >',
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15.0,
                      offset: Offset(4.0, 4.0),
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: Colors.white,
                      blurRadius: 15.0,
                      offset: Offset(-4.0, -4.0),
                      spreadRadius: 1.0)
                ],
              ),
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                ),
                title: Text('Irfan Maulana'),
                subtitle: Text(
                    'Aplikasi ini sangat membantu saya untuk menemukan mentor yang sesuai bidang saya.'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15.0,
                      offset: Offset(4.0, 4.0),
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: Colors.white,
                      blurRadius: 15.0,
                      offset: Offset(-4.0, -4.0),
                      spreadRadius: 1.0)
                ],
              ),
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                ),
                title: Text('Irfan Maulana'),
                subtitle: Text(
                    'Aplikasi ini sangat membantu saya untuk menemukan mentor yang sesuai bidang saya.'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //menu terakhir
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              //color: Colors.red,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 15.0,
                                  offset: Offset(4.0, 4.0),
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 15.0,
                                  offset: Offset(-4.0, -4.0),
                                  spreadRadius: 1.0)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.video_label, size: 60),
                            Text(
                              'Room',
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 15.0,
                                  offset: Offset(4.0, 4.0),
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 15.0,
                                  offset: Offset(-4.0, -4.0),
                                  spreadRadius: 1.0)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.video_label, size: 60),
                            Text(
                              'Room',
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
