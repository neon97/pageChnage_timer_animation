import 'package:flutter/material.dart';
import 'package:page_changer_timer_animation/timer.dart';
import 'carousel.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Fitness Training",
            style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[CountDownTimer(), CarouselDemo()],
        ),
      ),
    );
  }
}
