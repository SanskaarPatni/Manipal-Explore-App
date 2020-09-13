import 'package:flutter/material.dart';
import '../dummy_data.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceDetailScreen extends StatelessWidget {
  static const routeName = '/place-detail';
  final Function toggleFav;
  final Function isFavourite;

  PlaceDetailScreen(this.toggleFav, this.isFavourite);

  Widget icon(IconData iconn, String text) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          child: Icon(iconn),
          backgroundColor: Colors.white,
        ),
        SizedBox(height: 0.6),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  final List<String> reviews = [
    '"Good Ambience" ~Sanskaar',
    '"Value for Money" ~Sanskriti',
    '"Delicious and Tasty food" ~Archana',
    '"Service can be better "~Vikrant',
  ];

  Widget dots(bool colorRed) {
    return Container(
      width: 10.0,
      height: 10.0,
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 2.0,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorRed ? Colors.deepOrange : Colors.grey,
      ),
    );
  }

  Widget review(String review) {
    return Container(
      child: Text(
        review,
        style: TextStyle(fontSize: 15),
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromRGBO(211, 211, 211, 1),
        ),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 220,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final placeId = ModalRoute.of(context).settings.arguments;
    final selectedPlace =
        DUMMY_PLACES.firstWhere((place) => place.id == placeId);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          '${selectedPlace.title}',
          style: GoogleFonts.montserratSubrayada(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    selectedPlace.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: Container(
                    width: 300,
                    color: Color.fromRGBO(25, 124, 154, 0.7),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      selectedPlace.title,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                dots(true),
                dots(false),
                dots(false),
              ],
            ),
            SizedBox(height: 5),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  icon(Icons.timer, 'Open'),
                  icon(Icons.restaurant_menu, 'Menu'),
                  icon(Icons.directions_bike, 'Order'),
                  icon(Icons.directions, 'Directions'),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                selectedPlace.description,
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Divider(color: Colors.grey),
            SizedBox(height: 5),
            Text(
              'Ratings and Reviews',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        '4.2',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('80 votes'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      // review('"Good Ambience" ~ Sanskaar'),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      // review('"Value for Money" ~ kanjoos'),
                      buildContainer(
                        ListView.builder(
                          itemCount: reviews.length,
                          itemBuilder: (ctx, index) => Card(
                            color: Theme.of(context).accentColor,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                child: Text(reviews[index])),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
