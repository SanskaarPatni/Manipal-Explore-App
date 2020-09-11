import 'package:flutter/material.dart';
import './models/category.dart';
import './models/place.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Restaurants',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Beaches',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Temples',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Parks',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
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
      dummyBoolean: false),
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
      dummyBoolean: false),
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
      dummyBoolean: false),
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
      dummyBoolean: false),
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
      dummyBoolean: false),
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
    dummyBoolean: false,
  ),
];
