import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project_lab2/main.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {

    PageDecoration pageDecoration = PageDecoration(
      imagePadding: EdgeInsets.only(top: 120),
      pageColor: Colors.blue,
      bodyPadding: EdgeInsets.only(top: 100, left: 20, right: 20),
      titlePadding: EdgeInsets.only(top: 100),
      bodyTextStyle: TextStyle(color: Colors.black54,fontSize: 30),
    );

    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      //main background of screen
      pages: [ //set your page view here
        PageViewModel(
          title: "대신 들어 줄게요",
          body: '일상생활에서 들을 수 있는 소리들로 준비했습니다',
          image: Image.asset('splash.png'),
          decoration: PageDecoration(),

        ),
        PageViewModel(
          title: "네트워크 없이 사용해요",
          body: "데이터 낭비 없이, 배터니 낭비 없이 사용 가능해요",
          image: Image.asset('splash.png'),
          decoration: PageDecoration(),

        ),
        PageViewModel(
          title: "인공지능을 학습시켜요",
          body: "여러분 모두 인공지능을 학습시키는데 도움을 줄 수 있어요",
          image: Image.asset('splash.png'),
          decoration: PageDecoration(),
        ),

        //add more screen here
      ],

      onDone: () => goHomepage(context), //go to home page on done
      onSkip: () => goHomepage(context), // You can override on skip
      showSkipButton: true,
      nextFlex: 0,
      skip: Text('넘기기', style: TextStyle(color: Colors.black),),
      next: Icon(Icons.arrow_forward, color: Colors.black,),
      done: Text('시작하기', style: TextStyle(
          fontWeight: FontWeight.w600, color:Colors.black
      ),),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0), //size of dots
        color: Colors.black, //color of dots
        activeSize: Size(22.0, 10.0),
        activeColor: Colors.blueAccent, //color of active dot
        activeShape: RoundedRectangleBorder( //shave of active dot
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }

  void goHomepage(context){
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context){
          return LoginDemo();
        }
        ), (Route<dynamic> route) => false);
    //Navigate to home page and remove the intro screen history
    //so that "Back" button wont work.
  }

  Widget introImage(String assetName) {
    //widget to show intro image
    return Align(
      //child: Image.asset('$assetName', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }
}

