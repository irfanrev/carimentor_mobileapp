import 'package:flutter/material.dart';
import 'package:flutter_submission/models/desain.dart';
import 'package:flutter_submission/screen/chat_screen.dart';
import 'package:flutter_submission/screen/diskusi_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'desain_detail_screen.dart';

class DesainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Desain'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView.builder(
            itemCount: desainList.length,
            itemBuilder: (context, index) {
              final Desain desain = desainList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DesainDetail(desain: desain)));
                },
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
                              desain.imageAssets,
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    title: Text(
                      desain.name,
                      style: GoogleFonts.poppins(fontSize: 18),
                    ),
                    subtitle: Text(desain.kategori),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.chat_rounded,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatScreen()));
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
