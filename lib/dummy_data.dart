import 'package:flutter/material.dart';
import './models/category.dart';
import './models/place.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Cafés',
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
    description: 'Go out to get some fresh air!',
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
    description: 'Beaches, falls we have got it all',
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
        'https://cdn.trell.co/w=640,h=640,fit=scale-down/format=webp,quality=50/user-images/images/orig/g3R4kHs2r7VVHaUIgyy6DPZam1qMBmGC.jpg',
    description: 'Cosy · Casual · Vegetarian options',
    duration: 20,
    distance: 0.65,
    under2km: true,
    under5km: true,
    morethan7km: false,
    icon1: Icons.call,
    icon2: Icons.web,
    iconOne: 'Call',
    iconTwo: 'Website',
  ),
  Place(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Basil Cafe',
    imageUrl:
        'https://media-cdn.tripadvisor.com/media/photo-s/0c/25/24/93/basil.jpg',
    description: 'Cosy · Casual · Vegetarian options',
    duration: 20,
    distance: 2.1,
    under2km: false,
    under5km: true,
    morethan7km: false,
    icon1: Icons.call,
    icon2: Icons.web,
    iconOne: 'Call',
    iconTwo: 'Website',
  ),
  Place(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'Dollops',
    imageUrl:
        'https://content3.jdmagicbox.com/comp/udupi/43/0820P820STD40243/catalogue/dollops-manipal-udupi-home-delivery-restaurants-19n4ycv.png',
    description:
        'Simple country-style restaurant preparing a range of traditional Indian and regional dishes.',
    duration: 20,
    distance: 0.55,
    under2km: true,
    under5km: true,
    morethan7km: false,
    icon1: Icons.call,
    icon2: Icons.web,
    iconOne: 'Call',
    iconTwo: 'Website',
  ),
  Place(
    id: 'm4',
    categories: [
      'c2',
    ],
    title: 'DeeTee',
    imageUrl:
        'https://i1.wp.com/manipalblog.com/wp-content/uploads/2018/11/DeeTee-Manipal.jpg',
    description: 'Description about the place ',
    duration: 20,
    distance: 3.1,
    under2km: false,
    under5km: true,
    morethan7km: false,
    icon1: Icons.call,
    icon2: Icons.web,
    iconOne: 'Call',
    iconTwo: 'Website',
  ),
  Place(
    id: 'm5',
    categories: [
      'c2',
    ],
    title: 'Zeal RoofTop',
    imageUrl:
        'https://content.jdmagicbox.com/comp/udupi/e3/0820px820.x820.180703131936.v6e3/catalogue/zeal-rooftop-and-grill-manipal-udupi-restaurants-0SmpdKpzcW.jpg',
    description: 'Description about the place ',
    duration: 20,
    distance: 0.90,
    under2km: true,
    under5km: true,
    morethan7km: false,
    icon1: Icons.call,
    icon2: Icons.web,
    iconOne: 'Call',
    iconTwo: 'Website',
  ),
  Place(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'Durgamba Temple',
    imageUrl:
        'https://images.jdmagicbox.com/comp/udupi/y2/0820px820.x820.190821210412.d2y2/catalogue/venugopal-temple-manipal-udupi-temples-a7107sk4es.jpg?clr=',
    description: 'Description about the place ',
    duration: 20,
    distance: 2.1,
    under2km: false,
    under5km: true,
    morethan7km: false,
    icon1: Icons.call,
    icon2: Icons.timer,
    iconOne: 'Call',
    iconTwo: 'Open',
  ),
  Place(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'Venugopal Temple',
    imageUrl:
        'https://www.hlimg.com/images/things2do/738X538/ttd_1510669791m1.jpg',
    description: 'Description about the place ',
    duration: 20,
    distance: 1,
    under2km: true,
    under5km: true,
    morethan7km: false,
    icon1: Icons.call,
    icon2: Icons.timer,
    iconOne: 'Call',
    iconTwo: 'Open',
  ),
  Place(
    id: 'm9',
    categories: [
      'c4',
    ],
    title: 'Manipal Lake Park',
    imageUrl:
        'https://lh3.googleusercontent.com/proxy/F1dsaekTpXewGpqs28vtO1dLf3cSTCzVqigmNut8sUto0aFsZd4enEPDDYMldug3s4rLSVWiIuoR4PQMy6ckMKNFR3XaOk98lT5eM9mvtLWU3bId3MaAknkME9pHIJ3X6s4a4PQxN3CxLaiALL3Q',
    description: 'Description about the place ',
    duration: 20,
    distance: 2.2,
    under2km: false,
    under5km: true,
    morethan7km: false,
    icon1: Icons.call,
    icon2: Icons.timer,
    iconOne: 'Call',
    iconTwo: 'Open',
  ),
  Place(
    id: 'm10',
    categories: [
      'c4',
    ],
    title: 'Manipal End Point',
    imageUrl:
        'https://content3.jdmagicbox.com/comp/udupi/e5/0820px820.x820.170928022054.h5e5/catalogue/manipal-end-point-park-manipal-udupi-parks-vqu9gzzo96.jpg',
    description: 'Description about the place ',
    duration: 20,
    distance: 2.2,
    under2km: false,
    under5km: true,
    morethan7km: false,
    icon1: Icons.call,
    icon2: Icons.timer,
    iconOne: 'Call',
    iconTwo: 'Open',
  ),
  Place(
    id: 'm11',
    categories: [
      'c5',
    ],
    title: 'Inox Cinemas',
    imageUrl:
        'https://themanipaljournal.com/wp-content/uploads/2015/11/inox-451x305.png',
    description: 'Description about the place ',
    duration: 20,
    distance: 4.6,
    under2km: false,
    under5km: false,
    morethan7km: false,
    icon1: Icons.call,
    icon2: Icons.web,
    iconOne: 'Call',
    iconTwo: 'Website',
  ),
  Place(
    id: 'm12',
    categories: [
      'c5',
    ],
    title: 'Bharat Cinemas',
    imageUrl:
        'https://dhoom.filmipop.com/media//theatre/2017/Dec/1514095029-bharath.giii.jpg',
    description: 'Description about the place',
    duration: 20,
    distance: 0.18,
    under2km: true,
    under5km: true,
    morethan7km: false,
    icon1: Icons.call,
    icon2: Icons.web,
    iconOne: 'Call',
    iconTwo: 'Website',
  ),
  Place(
    id: 'm13',
    categories: [
      'c6',
    ],
    title: 'Hoode Beach',
    imageUrl:
        'https://insatiablewanderers.files.wordpress.com/2018/05/mg_3776_fotor.jpg?w=604',
    description: 'Description about the place ',
    duration: 20,
    distance: 16.9,
    under2km: false,
    under5km: false,
    morethan7km: true,
    icon1: Icons.call,
    icon2: Icons.timer,
    iconOne: 'Call',
    iconTwo: 'Open',
  ),
  Place(
    id: 'm14',
    categories: [
      'c6',
    ],
    title: 'Kaup Beach',
    imageUrl:
        'https://3.imimg.com/data3/KN/IW/MY-17460777/kaup-beach-tour-packages-500x500.jpg',
    description: 'Description about the place ',
    duration: 20,
    distance: 22.0,
    under2km: false,
    under5km: false,
    morethan7km: true,
    icon1: Icons.call,
    icon2: Icons.timer,
    iconOne: 'Call',
    iconTwo: 'Open',
  ),
  Place(
    id: 'm15',
    categories: [
      'c7',
    ],
    title: 'Kasturba Medical Hospital',
    imageUrl:
        'https://images.jdmagicbox.com/comp/udupi/e5/0820px820.x820.000968039916.m1e5/catalogue/kasturba-hospital-manipal-udupi-multispeciality-hospitals-8wajhru3yd.jpg?clr=#452d21',
    description: 'Description about the place ',
    duration: 20,
    distance: 1.6,
    under2km: true,
    under5km: true,
    morethan7km: false,
    icon1: Icons.call,
    icon2: Icons.web,
    iconOne: 'Call',
    iconTwo: 'Website',
  ),
  Place(
    id: 'm16',
    categories: [
      'c8',
    ],
    title: 'MCOPS',
    imageUrl:
        'https://www.highereducationdigest.com/wp-content/uploads/2019/05/IMAGE-1-3-550x330.jpg',
    description: 'Description about the place ',
    duration: 20,
    distance: 2.5,
    under2km: false,
    under5km: true,
    morethan7km: false,
    icon1: Icons.call,
    icon2: Icons.web,
    iconOne: 'Call',
    iconTwo: 'Website',
  ),
];
