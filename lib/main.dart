import 'package:flutter/material.dart';
import './screens/tabs_screen.dart';
import './screens/place_detail_screen.dart';
import './screens/filters_screen.dart';
import './screens/category_places_screen.dart';
import './dummy_data.dart';
import './models/place.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'filter1': false,
    'filter2': false,
  };

  List<Place> _availablePlaces = DUMMY_PLACES;
  List<Place> _favouritePlaces = [];

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availablePlaces = DUMMY_PLACES.where((place) {
        if (_filters['filter1'] && !place.dummyBoolean1) {
          return false;
        }
        if (_filters['filter2'] && !place.dummyBoolean2) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _toggleFavourite(String placeId) {
    final existingIndex =
        _favouritePlaces.indexWhere((place) => place.id == placeId);
    if (existingIndex >= 0) {
      setState(() {
        _favouritePlaces.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favouritePlaces.add(
          DUMMY_PLACES.firstWhere((place) => place.id == placeId),
        );
      });
    }
  }

  bool _isPlaceFavourite(String id) {
    return _favouritePlaces.any((place) => place.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manipal Explore',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotCondensed',
              ),
            ),
      ),
      routes: {
        '/': (ctx) => TabsScreen(_favouritePlaces),
        CategoryPlacesScreen.routeName: (ctx) =>
            CategoryPlacesScreen(_availablePlaces),
        PlaceDetailScreen.routeName: (ctx) =>
            PlaceDetailScreen(_toggleFavourite, _isPlaceFavourite),
        FiltersScreen.routeName: (ctx) => FiltersScreen(_setFilters, _filters),
      },
    );
  }
}
