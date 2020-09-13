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
  List<Place> filteredSearchPlaces;
  var _loadedInitData = false;
  bool isSearching = false;

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
      filteredSearchPlaces = displayedPlaces;
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _filterCountries(value) {
    setState(() {
      filteredSearchPlaces = displayedPlaces
          .where((place) =>
              place.title.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !isSearching
            ? Text(categoryTitle)
            : TextField(
                onChanged: (value) {
                  _filterCountries(value);
                },
              ),
        actions: <Widget>[
          isSearching
              ? IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      this.isSearching = false;
                      filteredSearchPlaces = displayedPlaces;
                    });
                  },
                )
              : IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      this.isSearching = true;
                    });
                  },
                ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return PlaceItem(
            id: filteredSearchPlaces[index].id,
            title: filteredSearchPlaces[index].title,
            imageUrl: filteredSearchPlaces[index].imageUrl,
            duration: filteredSearchPlaces[index].duration,
            distance: filteredSearchPlaces[index].distance,
          );
        },
        itemCount: filteredSearchPlaces.length,
      ),
    );
  }
}
