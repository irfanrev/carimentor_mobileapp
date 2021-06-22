import 'package:flutter/material.dart';
import 'package:flutter_submission/models/desain.dart';
import 'package:google_fonts/google_fonts.dart';

// detail screen
class DesainDetail extends StatefulWidget {
  final Desain desain;

  DesainDetail({this.desain});

  @override
  _DesainDetailState createState() => _DesainDetailState();
}

class _DesainDetailState extends State<DesainDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Profile'),
        ),
        body: ListView(
          children: [
            Container(
              //color: Colors.grey,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 210,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      gradient: LinearGradient(
                          colors: [Colors.red[600], Colors.orange],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(25),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 8),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(widget.desain.imageAssets),
                                fit: BoxFit.fill),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    right: 25,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.camera_alt_rounded,
                        size: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 105,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.camera_alt_rounded,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  widget.desain.name,
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.desain.kategori,
                  style: GoogleFonts.poppins(
                      fontSize: 18, color: Colors.grey[700]),
                )
              ],
            ),
            Container(
              color: Colors.grey,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [BtnRequest()],
              ),
            )
          ],
        ));
  }
}

class BtnRequest extends StatefulWidget {
  @override
  _BtnRequestState createState() => _BtnRequestState();
}

bool isRequest = false;

class _BtnRequestState extends State<BtnRequest> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isRequest = !isRequest;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        decoration: BoxDecoration(
          color: isRequest ? Colors.blue : Colors.green,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                  isRequest
                      ? Icons.add_circle_rounded
                      : Icons.check_circle_rounded,
                  color: Colors.white),
              SizedBox(
                width: 5,
              ),
              Text(
                isRequest ? 'Request' : 'Proccess',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
