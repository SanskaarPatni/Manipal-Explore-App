import 'package:flutter/material.dart';
import './models/category.dart';
import './models/place.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Cafes',
    color: Colors.purple,
    iconData: Icons.fastfood,
    description: 'Khao piyo',
  ),
  Category(
    id: 'c2',
    title: 'Clubs',
    color: Colors.red,
    iconData: Icons.movie,
    description: 'Khao piyo',
  ),
  Category(
    id: 'c3',
    title: 'Temples',
    color: Colors.orange,
    iconData: Icons.home,
    description: 'Khao piyo',
  ),
  Category(
    id: 'c4',
    title: 'Parks',
    color: Colors.amber,
    iconData: Icons.home,
    description: 'Khao piyo',
  ),
  Category(
    id: 'c5',
    title: 'Theatre',
    color: Colors.blue,
    iconData: Icons.party_mode,
    description: 'Khao piyo',
  ),
  Category(
    id: 'c6',
    title: 'Nature',
    color: Colors.green,
    iconData: Icons.home,
    description: 'Khao piyo',
  ),
  Category(
    id: 'c7',
    title: 'Hospital',
    color: Colors.lightGreen,
    iconData: Icons.home,
    description: 'Khao piyo',
  ),
  Category(
    id: 'c8',
    title: 'Colleges',
    color: Colors.pink,
    iconData: Icons.home,
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
