import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen(
      {super.key, required this.title, required this.listOfRecipes});

  final String title;
  final List listOfRecipes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(children: [
          IconButton(
              onPressed: () {
                Timer(Duration(microseconds:700), () {
                  Navigator.pop(context);
                });
              },
              icon: Icon(Icons.keyboard_arrow_left_outlined))
        ]),
      ),
    );
  }
}
