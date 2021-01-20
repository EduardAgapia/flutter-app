import 'package:flutter/material.dart';
import 'package:learning_flutter_app/screens/home_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(milliseconds: 2100),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen())),
          child: Center(child: Image.asset('assets/images/splash.gif'))),
      backgroundColor: Color.fromRGBO(170, 240, 240, 1),
    );
  }
}
