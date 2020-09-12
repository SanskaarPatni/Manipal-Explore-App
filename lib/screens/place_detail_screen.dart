import 'package:flutter/material.dart';
import '../dummy_data.dart';

class PlaceDetailScreen extends StatelessWidget {
  static const routeName = '/place-detail';
  final Function toggleFav;
  final Function isFavourite;

  PlaceDetailScreen(this.toggleFav, this.isFavourite);

  @override
  Widget build(BuildContext context) {
    final placeId = ModalRoute.of(context).settings.arguments;
    final selectedMeal =
        DUMMY_PLACES.firstWhere((place) => place.id == placeId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text('Something think',
                  style: Theme.of(context).textTheme.title),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFavourite(placeId) ? Icons.star : Icons.star_border,
        ),
        onPressed: () => toggleFav(placeId),
      ),
    );
  }
}
