import 'package:flutter/material.dart';
import '../screens/category_places_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final IconData iconData;
  final String description;

  CategoryItem(
      this.id, this.title, this.color, this.iconData, this.description);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryPlacesScreen.routeName,
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 30,
              child: Image.asset('./images/beach.png'),
              backgroundColor: Colors.white,
            ),
            SizedBox(height: 5),
            Text(
              title,
              style: Theme.of(context).textTheme.title,
            )
          ],
        ),
        /*decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(5),
        ),*/
        decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
      ),
    );
  }
}
