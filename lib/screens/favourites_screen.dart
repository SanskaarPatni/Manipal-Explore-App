import 'package:flutter/material.dart';
import '../models/place.dart';
import '../widgets/place_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Place> favouritePlaces;
  FavouritesScreen(this.favouritePlaces);
  @override
  Widget build(BuildContext context) {
    if (favouritePlaces.isEmpty) {
      return Center(
        child: Text(
          'No favourites yet- Start adding some places you want to explore!',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return PlaceItem(
            id: favouritePlaces[index].id,
            title: favouritePlaces[index].title,
            imageUrl: favouritePlaces[index].imageUrl,
            duration: favouritePlaces[index].duration,
            distance: favouritePlaces[index].distance,
            icon1: favouritePlaces[index].icon1,
            icon2: favouritePlaces[index].icon2,
            iconOne: favouritePlaces[index].iconOne,
            iconTwo: favouritePlaces[index].iconTwo,
          );
        },
        itemCount: favouritePlaces.length,
      );
    }
  }
}
