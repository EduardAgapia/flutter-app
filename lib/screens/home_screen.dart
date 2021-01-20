import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:learning_flutter_app/widgets/destination_carousel.dart';
import 'package:url_launcher/url_launcher.dart';
import '../CustomAppBar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: ClipPath(
          clipper: CustomAppBar(),
          child: Container(
            // color: Color.fromRGBO(15, 87, 87, 1),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/townhall.jpg"),
                    fit: BoxFit.cover)),
          ),
        ),
        preferredSize: Size.fromHeight(kToolbarHeight + 120),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
        child: DestinationCarousel(),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromRGBO(220, 249, 249, 1),
        color: Color.fromRGBO(12, 70, 70, 1),
        buttonBackgroundColor: Color.fromRGBO(220, 249, 249, 1),
        height: 70,
        animationCurve: Curves.bounceInOut,
        items: [
          ClipRRect(
            // borderRadius: BorderRadius.circular(22.0), //or 15.0
            child: Container(
              height: 75.0,
              width: 75.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(220, 249, 249, 1),
                image: DecorationImage(
                  image: AssetImage('assets/images/sigla.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
        onTap: (index) {
          const url = 'http://ghidturistic-ne.ro/';
          launchURL(url);
        },
      ),
      backgroundColor: Color.fromRGBO(220, 249, 249, 1),
    );
  }
}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
