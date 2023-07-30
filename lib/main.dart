import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:project_lab2/newAcc.dart';
import 'HomePage.dart';
import 'IntroScreen.dart';
import 'findPw.dart';


void main() {
  //KakaoSdk.init(nativeAppKey: '2f064cdd48dbc39e96eb542e691381fa');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:IntroScreen(),
    );
  }
}
class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 200,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('asset/images/flutter-logo.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    //labelText: '이메일',

                    hintText: '이메일을 입력하세요.'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 20),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    //labelText: '비밀번호',
                    hintText: '비밀번호를 입력하세요.'),
              ),
            ),

            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  '로그인',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (_) => newAcc())
                );
              },
              child: Text('회원가입',style:TextStyle(color: Colors.white,fontSize: 20),),),

            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => findPW()));
              },
              child: Text(
                '비밀번호를 잊으셨나요?',
                style: TextStyle(color: Colors.white , fontSize: 20),
              ),
            ),
            IconButton(onPressed: (){}, icon: Image.asset('lib/assets/kakao_login.png'))
          ],
        ),
      ),
    );
  }
}