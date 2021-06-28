import 'package:flutter/material.dart';
import 'package:flutter_submission/models/notification.dart';
import 'package:google_fonts/google_fonts.dart';

class NotifScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Text('Notification'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: notificationList.length,
            itemBuilder: (context, index) {
              final NotificationData notificationData = notificationList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              NotifDetail(notificationData: notificationData)));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage(notificationData.imageAssets))),
                      ),
                      title: Text(
                        notificationData.title,
                        style: GoogleFonts.poppins(),
                      ),
                      subtitle: Text(
                        notificationData.subtitile,
                        style: GoogleFonts.poppins(),
                      ),
                      trailing: IconButton(
                          icon: Icon(
                            Icons.warning_rounded,
                            color: Colors.green,
                          ),
                          onPressed: () {}),
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}

class NotifDetail extends StatelessWidget {
  final NotificationData notificationData;

  NotifDetail({this.notificationData});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Notification Detail'),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: MediaQuery.of(context).size.width,
            child: Image.asset(notificationData.imageAssets,
                fit: BoxFit.fitHeight),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                notificationData.title,
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                notificationData.subtitile,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Text(notificationData.desk),
          )
        ],
      ),
    );
  }
}
