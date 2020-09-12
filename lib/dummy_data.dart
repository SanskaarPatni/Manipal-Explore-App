import 'package:flutter/material.dart';
import './models/category.dart';
import './models/place.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Restaurants',
    color: Colors.purple,
    imgPath: './images/cafe.png',
    description: 'Grab a quick bite!',
  ),
  Category(
    id: 'c2',
    title: 'Clubs',
    color: Colors.red,
    imgPath: './images/beer.png',
    description: 'Drink, Dance and Party!',
  ),
  Category(
    id: 'c3',
    title: 'Temples',
    color: Colors.orange,
    imgPath: './images/church.png',
    description: 'Peace of Mind',
  ),
  Category(
    id: 'c4',
    title: 'Parks',
    color: Colors.amber,
    imgPath: './images/park.png',
    description: 'Take a break to get some fresh air',
  ),
  Category(
    id: 'c5',
    title: 'Theatre',
    color: Colors.blue,
    imgPath: './images/movies.png',
    description: 'Movies on your mind?',
  ),
  Category(
    id: 'c6',
    title: 'Nature',
    color: Colors.green,
    imgPath: './images/beach.png',
    description: 'Salty air,beaches sound good!',
  ),
  Category(
    id: 'c7',
    title: 'Hospital',
    color: Colors.lightGreen,
    imgPath: './images/hospital.png',
    description: 'Health is Wealth',
  ),
  Category(
    id: 'c8',
    title: 'Colleges',
    color: Colors.pink,
    imgPath: './images/college.png',
    description: 'The Grind is Reall!',
  ),
];
const DUMMY_PLACES = const [
  Place(
      id: 'm1',
      categories: [
        'c1',
      ],
      title: 'The Egg Factory',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      description: 'Blah blaj',
      duration: 20,
      dummyBoolean1: false,
      dummyBoolean2: false),
  Place(
      id: 'm2',
      categories: [
        'c1',
      ],
      title: 'Pai Tiffin',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      description: 'Blah blaj',
      duration: 20,
      dummyBoolean1: false,
      dummyBoolean2: false),
  Place(
      id: 'm3',
      categories: [
        'c1',
      ],
      title: 'Dollops',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      description: 'Blah blaj',
      duration: 20,
      dummyBoolean1: false,
      dummyBoolean2: false),
  Place(
      id: 'm4',
      categories: [
        'c2',
      ],
      title: 'DeeTee',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      description: 'Blah blaj',
      duration: 20,
      dummyBoolean1: false,
      dummyBoolean2: false),
  Place(
      id: 'm5',
      categories: [
        'c2',
      ],
      title: 'Zeal',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      description: 'Blah blaj',
      duration: 20,
      dummyBoolean1: false,
      dummyBoolean2: false),
  Place(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: 'Remix',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    description: 'Blah blaj',
    duration: 20,
    dummyBoolean1: false,
    dummyBoolean2: false,
  ),
  Place(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'Durgamba Temple',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    description: 'Blah blaj',
    duration: 20,
    dummyBoolean1: false,
    dummyBoolean2: false,
  ),
  Place(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'Venugopal Temple',
    imageUrl:
        'https://www.hlimg.com/images/things2do/738X538/ttd_1510669791m1.jpg',
    description: 'Blah blaj',
    duration: 20,
    dummyBoolean1: false,
    dummyBoolean2: false,
  ),
  Place(
    id: 'm9',
    categories: [
      'c4',
    ],
    title: 'Manipal Lake Park',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    description: 'Blah blaj',
    duration: 20,
    dummyBoolean1: false,
    dummyBoolean2: false,
  ),
  Place(
    id: 'm10',
    categories: [
      'c4',
    ],
    title: 'Manipal End Point',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    description: 'Blah blaj',
    duration: 20,
    dummyBoolean1: false,
    dummyBoolean2: false,
  ),
  Place(
    id: 'm11',
    categories: [
      'c5',
    ],
    title: 'Inox Cinemas',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    description: 'Blah blaj',
    duration: 20,
    dummyBoolean1: false,
    dummyBoolean2: false,
  ),
  Place(
    id: 'm12',
    categories: [
      'c5',
    ],
    title: 'Bharat Cinemas',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    description: 'Blah blaj',
    duration: 20,
    dummyBoolean1: false,
    dummyBoolean2: false,
  ),
  Place(
    id: 'm13',
    categories: [
      'c6',
    ],
    title: 'Hoode Beach',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    description: 'Blah blaj',
    duration: 20,
    dummyBoolean1: false,
    dummyBoolean2: false,
  ),
  Place(
    id: 'm14',
    categories: [
      'c6',
    ],
    title: 'Malpe Beach',
    imageUrl:
        'https://drive.google.com/drive/u/0/folders/1ZYddrLDPKAs3F754NuG6VFUYDeeQb1ey',
    description: 'Blah blaj',
    duration: 20,
    dummyBoolean1: false,
    dummyBoolean2: false,
  ),
  Place(
    id: 'm15',
    categories: [
      'c7',
    ],
    title: 'Kasturba Medical Hospital',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    description: 'Blah blaj',
    duration: 20,
    dummyBoolean1: false,
    dummyBoolean2: false,
  ),
  Place(
    id: 'm16',
    categories: [
      'c8',
    ],
    title: 'MCOPS',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    description: 'Blah blaj',
    duration: 20,
    dummyBoolean1: false,
    dummyBoolean2: false,
  ),
];
