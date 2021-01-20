import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learning_flutter_app/models/destination_model.dart';
import 'package:learning_flutter_app/screens/destination_scree.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * .55,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: destinations.length,
              itemBuilder: (BuildContext context, int index) {
                Destination destination = destinations[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => DestinationScreen(
                                destination: destination,
                              ))),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.8),
                          spreadRadius: 0,
                          blurRadius: 3,
                          offset: Offset(6, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(10.0),
                    width: MediaQuery.of(context).size.width / 1.6,
                    height: MediaQuery.of(context).size.height,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Container(
                          child: Stack(
                            children: <Widget>[
                              Hero(
                                tag: destination.imageUrl,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image(
                                    height: MediaQuery.of(context).size.width,
                                    width: 560.0,
                                    image: AssetImage(destination.imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10.0,
                                bottom: 10.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      destination.city,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.2),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.tripadvisor,
                                          size: 19.0,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 5.0),
                                        Text(
                                          destination.country,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
