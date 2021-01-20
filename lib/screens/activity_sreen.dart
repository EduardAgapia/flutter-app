import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:learning_flutter_app/models/activity_model.dart';
import 'package:learning_flutter_app/screens/home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class ActivityScreen extends StatefulWidget {
  final Activity activity;

  ActivityScreen({this.activity});

  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * .6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0)
                  ],
                ),
                child: Hero(
                  tag: widget.activity.imageURL,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: AssetImage(widget.activity.imageURL),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.black,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.activity.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2),
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 15.0,
                          color: Colors.white70,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          widget.activity.type,
                          style:
                              TextStyle(color: Colors.white70, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white70,
                  size: 25.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Expanded(
            // child: ListView.builder(
            //   itemBuilder: (BuildContext context, int index) {
            child: Container(
              // height: MediaQuery.of(context).size.height *.4,
              // width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(238, 252, 252, 1),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(13.0, 15.0, 6.0, 13.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'Program cu publicul',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                        Container(
                          child: IconButton(
                            icon: Icon(Icons.access_time),
                            iconSize: 30.0,
                            color: Colors.black,
                            // onPressed: () => Navigator.pop(context),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50.0,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(53, 157, 157, 1),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            widget.activity.startTime[0],
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 11.0,
                        ),
                        Container(
                          width: 50.0,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(53, 157, 157, 1),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            widget.activity.startTime[1],
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    Column(
                      children: [
                        Text(
                          'Descriere:',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          widget.activity.description,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.height / 2 - 30,
                      child: GestureDetector(
                        onTap: () {
                          launchURL(widget.activity.location);
                        },
                        child: Container(
                          width: 100.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(12, 70, 70, 1),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Location',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(238, 252, 252, 1),
                                ),
                              ),
                              Icon(
                                Icons.location_on,
                                color: Color.fromRGBO(238, 252, 252, 1),
                                size: 25.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // },
            // ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromRGBO(238, 252, 252, 1),
        color: Color.fromRGBO(12, 70, 70, 1),
        // buttonBackgroundColor: Color.fromRGBO(220, 249, 249, 1),
        height: 70,
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(
          milliseconds: 300,
        ),
        items: [
          Icon(Icons.map, size: 35),
          Icon(Icons.home, size: 35),
          Icon(Icons.qr_code_scanner, size: 35),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          } else if (index == 2) {
            ImagePicker.pickImage(
              source: ImageSource.camera,
            );
          }
        },
      ),
      backgroundColor: Color.fromRGBO(218, 251, 251, 1),
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
