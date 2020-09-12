import 'package:flutter/material.dart';
import '../screens/place_detail_screen.dart';

class PlaceItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;

  PlaceItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
  });

  void selectPlace(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed(PlaceDetailScreen.routeName, arguments: id)
        .then((result) {
      if (result != null) {
        //removeVisitedPage(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectPlace(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.schedule,
                      ),
                      SizedBox(width: 6),
                      Text('$duration min'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.schedule,
                      ),
                      SizedBox(width: 6),
                      Text('$duration min'),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
