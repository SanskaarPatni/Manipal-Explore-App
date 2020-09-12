import 'package:flutter/material.dart';
import '../widgets/place_item.dart';
import '../models/place.dart';

class CategoryPlacesScreen extends StatefulWidget {
  static const routeName = '/categories-places';
  final List<Place> availablePlaces;
  CategoryPlacesScreen(this.availablePlaces);
  @override
  _CategoryPlacesScreenState createState() => _CategoryPlacesScreenState();
}

class _CategoryPlacesScreenState extends State<CategoryPlacesScreen> {
  String categoryTitle;
  List<Place> displayedPlaces;
  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    //We need to not overwrite the changed list ..Since obv if we setState
    //then didChangeDependencies  will run again
    if (_loadedInitData == false) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayedPlaces = widget.availablePlaces.where((place) {
        return place.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return PlaceItem(
            id: displayedPlaces[index].id,
            title: displayedPlaces[index].title,
            imageUrl: displayedPlaces[index].imageUrl,
            duration: displayedPlaces[index].duration,
            bestTime: displayedPlaces[index].bestTime,
          );
        },
        itemCount: displayedPlaces.length,
      ),
    );
  }
}
