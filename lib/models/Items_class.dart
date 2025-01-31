import 'package:flutter/material.dart';

class ItemsClass {
  String name;
  String iconpath;
  Color boxcolor;
  ItemsClass(
      {required this.iconpath, required this.name, required this.boxcolor});

  static List<ItemsClass> getCategories() {
    List<ItemsClass> categories = [];
    categories.add(
        ItemsClass(iconpath: 'assets/icons/pie.svg', name: 'Pie', boxcolor: Colors.red));
    categories.add(
        ItemsClass(iconpath: 'assets/icons/plate.svg', name: 'Salad', boxcolor: Colors.purple));
    categories.add(
        ItemsClass(iconpath: 'assets/icons/pancakes.svg', name: 'Pancake', boxcolor: Colors.amber));
    categories.add(
        ItemsClass(iconpath: 'assets/icons/orange-snacks.svg', name: 'Smoothies', boxcolor: Colors.orange));

    return categories;
  }
}
