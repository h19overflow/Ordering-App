import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class StackItemImage extends StatelessWidget {
  const StackItemImage({
    super.key,
    required this.imagePath,
    required this.title,
  });

  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: 170,
            color: const Color.fromARGB(73, 156, 174, 248),
          ),
        ),
        Positioned(
            child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ))),
        Container(
          decoration: const BoxDecoration(color: CupertinoColors.black),
        )
      ],
    );
  }
}
