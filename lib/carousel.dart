import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://thumbs.gfycat.com/ShadowyPoliteBonobo-small.gif',
  'https://lh3.googleusercontent.com/proxy/xwAtiE9AdpueOY3AhRDIVqoDmMuTigYolFo2-qH7qf1ECj6ZqGf4QswIxcuUAYpZrU-PWDhGLv__2WuOkKvqcEHBqyahg0a0MvfFy8kTKcho6SJBpVj4GQpryvygaTDxZqHF5sdwXvzhA1ytD-k',
  'https://imagesvc.meredithcorp.io/v3/mm/gif?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F35%2F2015%2F06%2F04033753%2FT0iYPw.gif',
];

final List<String> imgListName = [
  "PUSH UPS",
  "SQUATS",
  "REVERSE LUNGE",
];

class CarouselDemo extends StatefulWidget {
  @override
  _CarouselDemoState createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<CarouselDemo> {
  String exeName = imgListName[0].toString();
  @override
  Widget build(BuildContext context) {
    final CarouselSlider verticalScrollCarousel = CarouselSlider(
      scrollDirection: Axis.vertical,
      aspectRatio: 2.0,
      autoPlay: true,
      reverse: false,
      onPageChanged: (int page) {
        print(page);
        setState(() {
          exeName = imgListName[page].toString();
        });
      },
      //autoPlayAnimationDuration: Duration(seconds: 5),
      autoPlayInterval: Duration(seconds: 10),
      pauseAutoPlayOnTouch: Duration(seconds: 5),
      enlargeCenterPage: true,
      viewportFraction: 1.0,
      items: imgList.map(
        (url) {
          return Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                Image.network(
                  url,
                  fit: BoxFit.fill,
                ),
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      exeName,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          );
        },
      ).toList(),
    );

    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      child: verticalScrollCarousel,
    );
  }
}
