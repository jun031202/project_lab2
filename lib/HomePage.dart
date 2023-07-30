import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Center(
        child: Container(
          height: 80,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)
          ),
          child: ElevatedButton(onPressed: (){},child: Text('환영합니다'),style: ElevatedButton.styleFrom(shape: StadiumBorder()),
        ),
      ),
    )
    );
  }
}
