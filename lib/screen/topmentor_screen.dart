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
              child: ListTile(
                leading: Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
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
                trailing: IconButton(
                  icon: Icon(
                    Icons.chat_rounded,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatScreen()));
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
