import 'dart:core';

import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination(
      {this.imageUrl,
      this.city,
      this.country,
      this.description,
      this.activities});
}

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/mustSee.jpg',
    city: 'E "Must see!"',
    country: '#YourTown',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
    activities: mustSee,
  ),
  Destination(
    imageUrl: 'assets/images/trail.jpg',
    city: 'Trasee',
    country: '#YourTown',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
    activities: trails,
  ),
  Destination(
    imageUrl: 'assets/images/key.png',
    city: 'Puncte cheie',
    country: 'Spital/Secție poliție',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    activities: keyPoints,
  ),
  Destination(
    imageUrl: 'assets/images/history.jpg',
    city: 'Istoric',
    country: '#YourTown',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
    activities: mustSee,
  )
];

List<Activity> mustSee = [
  Activity(
    imageURL: 'assets/images/mustSee1.jpg',
    name: 'UAIC',
    type: 'Universitate',
    startTime: ['8:00', '20:00'],
    rating: 5,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod'
        ' tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim '
        'veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea'
        ' commodo consequat. Duis aute irure dolor in reprehenderit in voluptate'
        ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint'
        ' occaecat cupidatat non proident, sunt in culpa qui officia deserunt'
        ' mollit anim id est laborum.',
    location: 'geolocation on google',
  ),
  Activity(
    imageURL: 'assets/images/mustSee2.jpg',
    name: 'Iașul în sărbătoare',
    type: 'Eveniment ',
    startTime: ['9:00', '20:30'],
    rating: 5,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod'
        ' tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim '
        'veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea'
        ' commodo consequat. Duis aute irure dolor in reprehenderit in voluptate'
        ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint'
        ' occaecat cupidatat non proident, sunt in culpa qui officia deserunt'
        ' mollit anim id est laborum.',
    location: 'geolocation on google',
  ),
  Activity(
    imageURL: 'assets/images/mustSee3.jpg',
    name: 'Palas Iași',
    type: 'Centru comercial',
    startTime: ['10:00', '22:00'],
    rating: 5,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod'
        ' tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim '
        'veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea'
        ' commodo consequat. Duis aute irure dolor in reprehenderit in voluptate'
        ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint'
        ' occaecat cupidatat non proident, sunt in culpa qui officia deserunt'
        ' mollit anim id est laborum.',
    location: 'geolocation on google',
  )
];
List<Activity> keyPoints = [
  Activity(
    imageURL: 'assets/images/key1.jpg',
    name: 'Spital',
    type: 'Medical ',
    startTime: ['9:00', '20:30'],
    rating: 5,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod'
        ' tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim '
        'veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea'
        ' commodo consequat. Duis aute irure dolor in reprehenderit in voluptate'
        ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint'
        ' occaecat cupidatat non proident, sunt in culpa qui officia deserunt'
        ' mollit anim id est laborum.',
    location: 'https://www.google.com/maps/dir//Spitalul+Sfântul+Spirido+Iași',
  ),
  Activity(
    imageURL: 'assets/images/key2.jpg',
    name: 'Sectie poliție',
    type: 'Siguranță ',
    startTime: ['9:00', '20:30'],
    rating: 5,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod'
        ' tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim '
        'veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea'
        ' commodo consequat. Duis aute irure dolor in reprehenderit in voluptate'
        ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint'
        ' occaecat cupidatat non proident, sunt in culpa qui officia deserunt'
        ' mollit anim id est laborum.',
    location: 'https://www.google.com/maps/dir//Poliția+Municipală+Iași',
  ),
  Activity(
    imageURL: 'assets/images/key3.png',
    name: 'Căi transport',
    type: 'Transport',
    startTime: ['9:00', '20:30'],
    rating: 5,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod'
        ' tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim '
        'veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea'
        ' commodo consequat. Duis aute irure dolor in reprehenderit in voluptate'
        ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint'
        ' occaecat cupidatat non proident, sunt in culpa qui officia deserunt'
        ' mollit anim id est laborum.',
    location: 'https://www.google.com/maps/dir//Gară+Iași',
  )
];
List<Activity> trails = [
  Activity(
    imageURL: 'assets/images/trail1.jpg',
    name: 'Traseul #1',
    type: 'Drumeție',
    startTime: ['6:00', '22:30'],
    rating: 5,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod'
        ' tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim '
        'veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea'
        ' commodo consequat. Duis aute irure dolor in reprehenderit in voluptate'
        ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint'
        ' occaecat cupidatat non proident, sunt in culpa qui officia deserunt'
        ' mollit anim id est laborum.',
    location: 'geolocation on google',
  ),
  Activity(
    imageURL: 'assets/images/trail2.jpg',
    name: 'Traseul #2',
    type: 'Drumeție',
    startTime: ['6:00', '22:30'],
    rating: 5,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod'
        ' tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim '
        'veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea'
        ' commodo consequat. Duis aute irure dolor in reprehenderit in voluptate'
        ' velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint'
        ' occaecat cupidatat non proident, sunt in culpa qui officia deserunt'
        ' mollit anim id est laborum.',
    location: 'geolocation on google',
  )
];
