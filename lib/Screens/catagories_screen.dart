import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../Widgets/category_item.dart';

class CatagoriesScren extends StatelessWidget {
  // const CatagoriesScren({Key? key}) : super(key: key);

  // final String categoryID;
  // final String categoryTitle;

  // CatagoriesScren(this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: DUMMY_CATEGORIES
          .map((catItem) =>
              CategoryItem(catItem.id, catItem.title, catItem.color))
          .toList(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20),
    );
  }
}
