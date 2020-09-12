import 'package:flutter/material.dart';
import './models/category.dart';
import './models/place.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Restaurants',
    color: Colors.purple,
    imgPath: './images/cafe.png',
    description: 'Khao piyo',
  ),
  Category(
    id: 'c2',
    title: 'Clubs',
    color: Colors.red,
    imgPath: './images/beer.png',
    description: 'Khao piyo',
  ),
  Category(
    id: 'c3',
    title: 'Temples',
    color: Colors.orange,
    imgPath: './images/church.png',
    description: 'Khao piyo',
  ),
  Category(
    id: 'c4',
    title: 'Parks',
    color: Colors.amber,
    imgPath: './images/park.png',
    description: 'Khao piyo',
  ),
  Category(
    id: 'c5',
    title: 'Theatre',
    color: Colors.blue,
    imgPath: './images/movies.png',
    description: 'Khao piyo',
  ),
  Category(
    id: 'c6',
    title: 'Nature',
    color: Colors.green,
    imgPath: './images/beach.png',
    description: 'Khao piyo',
  ),
  Category(
    id: 'c7',
    title: 'Hospital',
    color: Colors.lightGreen,
    imgPath: './images/hospital.png',
    description: 'Khao piyo',
  ),
  Category(
    id: 'c8',
    title: 'Colleges',
    color: Colors.pink,
    imgPath: './images/college.png',
    description: 'Khao piyo',
  ),
];
const DUMMY_PLACES = const [
  Place(
      id: 'm1',
      categories: [
        'c1',
        'c2',
      ],
      title: 'Spaghetti with Tomato Sauce',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      description: 'Blah blaj',
      travelWays: ['cAR', 'AUTO'],
      duration: 20,
      bestTime: BestTimeToVisit.Afternoon,
      dummyBoolean1: false,
      dummyBoolean2: false),
  Place(
      id: 'm2',
      categories: [
        'c1',
        'c2',
      ],
      title: 'Spaghetti with Tomato Sauce',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      description: 'Blah blaj',
      travelWays: ['cAR', 'AUTO'],
      duration: 20,
      bestTime: BestTimeToVisit.Afternoon,
      dummyBoolean1: false,
      dummyBoolean2: false),
  Place(
      id: 'm3',
      categories: [
        'c5',
        'c2',
      ],
      title: 'Spaghetti with Tomato Sauce',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      description: 'Blah blaj',
      travelWays: ['cAR', 'AUTO'],
      duration: 20,
      bestTime: BestTimeToVisit.Afternoon,
      dummyBoolean1: false,
      dummyBoolean2: false),
  Place(
      id: 'm4',
      categories: [
        'c3',
        'c2',
      ],
      title: 'Spaghetti with Tomato Sauce',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      description: 'Blah blaj',
      travelWays: ['cAR', 'AUTO'],
      duration: 20,
      bestTime: BestTimeToVisit.Afternoon,
      dummyBoolean1: false,
      dummyBoolean2: false),
  Place(
      id: 'm5',
      categories: [
        'c1',
        'c4',
      ],
      title: 'Spaghetti with Tomato Sauce',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      description: 'Blah blaj',
      travelWays: ['cAR', 'AUTO'],
      duration: 20,
      bestTime: BestTimeToVisit.Afternoon,
      dummyBoolean1: false,
      dummyBoolean2: false),
  Place(
    id: 'm6',
    categories: [
      'c1',
      'c3',
    ],
    title: 'Spaghetti with Tomato Sauce',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    description: 'Blah blaj',
    travelWays: ['cAR', 'AUTO'],
    duration: 20,
    bestTime: BestTimeToVisit.Afternoon,
    dummyBoolean1: false,
    dummyBoolean2: false,
  ),
];
