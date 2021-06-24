import 'package:flutter/material.dart';
import 'package:flutter_submission/models/marketing.dart';
import 'package:flutter_submission/screen/marketing_detail.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chat_screen.dart';

class MarketingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Martketing'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView.builder(
            itemCount: marketingList.length,
            itemBuilder: (context, index) {
              final Marketing marketing = marketingList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MarketingDetail(marketing: marketing)));
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
                              marketing.imageAssets,
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    title: Text(
                      marketing.name,
                      style: GoogleFonts.poppins(fontSize: 18),
                    ),
                    subtitle: Text(marketing.kategori),
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
