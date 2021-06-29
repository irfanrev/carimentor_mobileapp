import 'package:flutter/material.dart';
import 'package:flutter_submission/models/topmentor.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chat_screen.dart';

class TopMentorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: mentorList.length,
        itemBuilder: (context, index) {
          final TopMentor topmentor = mentorList[index];
          return InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        //shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                              topmentor.imageAssets,
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    title: Text(
                      topmentor.name,
                      style: GoogleFonts.poppins(fontSize: 18),
                    ),
                    subtitle: Text(topmentor.kategori),
                    trailing: FavoriteButtonTop(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Available',
                            style: TextStyle(color: Colors.green),
                          ),
                          Text('09.00 WIB - Besok'),
                        ],
                      ),
                      SizedBox(),
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green),
                        child: Center(
                          child: Text(
                            'Request',
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// favorite button
class FavoriteButtonTop extends StatefulWidget {
  @override
  _FavoriteButtonTopState createState() => _FavoriteButtonTopState();
}

bool isFavorite = false;

class _FavoriteButtonTopState extends State<FavoriteButtonTop> {
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
