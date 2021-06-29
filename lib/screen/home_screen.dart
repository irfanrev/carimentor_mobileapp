import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_submission/models/marketing.dart';
import 'package:flutter_submission/models/programming.dart';
import 'package:flutter_submission/models/semuakategori.dart';
import 'package:flutter_submission/models/topmentor.dart';
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

  TextEditingController cariController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                padding: EdgeInsets.only(top: 28.0),
                child: Center(
                    child: Text('MentorKu',
                        style: GoogleFonts.poppins(
                            fontSize: 22.0, color: Colors.white))),
              ),
              Positioned(
                  top: 30.0,
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
                          child: Image.asset('assets/avatar.png'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 20.0)),
                    ],
                  )),
              Positioned(
                top: 40.0,
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
                            color: Colors.red, size: 20.0),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10.0)),
                  ],
                ),
              )
            ],
          )),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              //color: Colors.grey,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(22),
                        bottomRight: Radius.circular(22),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Hi,',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Irfan Maulana',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ],
                            ),
                            Text(
                              'Cari Mentor Terbaikmu!',
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {}),
                              Expanded(
                                child: TextFormField(
                                  controller: cariController,
                                  decoration: InputDecoration.collapsed(
                                    hintText: 'Cari mentor...',
                                  ),
                                ),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.clear_rounded,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {}),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
                          fontSize: 16, color: Colors.white),
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

            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Mentor',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllCategory()));
                    },
                    child: Text(
                      'See all >',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190.0,
              margin: EdgeInsets.only(left: 12),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mentorList.length,
                itemBuilder: (context, index) {
                  final TopMentor topMentor = mentorList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 13.0, horizontal: 10),
                    child: Container(
                      //padding: EdgeInsets.all(2),
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FavoriteButton(),
                              Text('4.5'),
                              Text(''),
                            ],
                          ),
                          // SizedBox(
                          //   height: 8,
                          // ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(topMentor.imageAssets),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            topMentor.name,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold),
                          ),
                          Text(topMentor.kategori)
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 8),
            Divider(),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Kategori',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllCategory()));
                    },
                    child: Text(
                      'See all >',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            /// Kategori atau filter
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DesainScreen()));
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.design_services,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Design',
                        style: GoogleFonts.poppins(color: Colors.black),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProgrammingScreen()));
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.computer_rounded,
                          color: Colors.indigo,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Coding',
                        style: GoogleFonts.poppins(color: Colors.black),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MarketingScreen()));
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.shop_rounded,
                          color: Colors.green,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Marketing',
                        style: GoogleFonts.poppins(color: Colors.black),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditorScreen()));
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.movie_rounded,
                          color: Colors.blue,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Editor',
                        style: GoogleFonts.poppins(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Divider(),
            SizedBox(height: 8),

            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rekomendasi',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AllCategory())),
                    child: Text(
                      'See all >',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),

            Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                width: MediaQuery.of(context).size.width,
                height: 570,
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

// favorite button
class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

bool isFavorite = false;

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        });
  }
}
