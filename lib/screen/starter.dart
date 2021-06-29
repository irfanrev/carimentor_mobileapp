import 'package:flutter/material.dart';
import 'package:flutter_submission/screen/login_screen.dart';
import 'package:flutter_submission/widgets/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Upgrade kemampuan sesuai fashion',
              body: 'Terdapat banyak mentor handal yang siap membantu.',
              image: buildImage('assets/on1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Selangkah lebih maju',
              body:
                  'Dengan mentorku, anda akan mendapat bimbingan full oleh mentor profesional',
              image: buildImage('assets/on2.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Forum diskusi dan bimbingan',
              body: 'Semua mentor siap membimbing kapanpun dan dimanapun',
              image: buildImage('assets/on3.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Dengan mentorku belajar akan lebih mudah',
              body: 'Start your journey',
              footer: ButtonWidget(
                text: 'Get Started',
                onClicked: () => goToHome(context),
              ),
              image: buildImage('assets/on4.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Mulai', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip'),
          onSkip: () => goToHome(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
          skipFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginScreen()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
