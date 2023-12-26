import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../ModelsAndData/GroceryItem.dart';
import 'Title.dart';
import 'grocery_item_widget.dart';

class BuildHorizontal extends StatelessWidget {
  const BuildHorizontal(
      {super.key,
      required this.listOfItems,
      required this.mainTitle,
      required this.fontSize,
      required this.rightMargin});

  final List<GroceryItem> listOfItems;
  final String mainTitle;
  final double rightMargin;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: rightMargin),
          child: MainTitle(size: fontSize, text: mainTitle),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 218,
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: listOfItems.length,
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                childAspectRatio: 1.4),
            itemBuilder: (context, index) => StreamBuilder<Object>(
                stream: null,
                builder: (context, snapshot) {
                  return FadeInLeftBig(
                      duration: Durations.medium1,
                      child:
                          GroceryItemWidget(groceryItem: groceryItems[index]));
                }),
          ),
        ),
      ],
    );
  }
}
