import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        gridDelegate: MediaQuery.of(context).size.width > 330
            ? SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 240,
                childAspectRatio: 3 / 3,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30)
            : SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30),
        children: DUMMY_CATEGORIES
            .map((catData) => CategoryItem(catData.id, catData.title,
                catData.color, catData.imgPath, catData.description))
            .toList());
  }
}
