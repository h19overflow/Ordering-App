import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryToggle extends StatefulWidget {
  CategoryToggle(
      {required this.function, required this.picturePath, super.key});

  final String picturePath;
  final void Function() function;

  bool isSelected = false;

  void changeIsSelected() {
    isSelected = !isSelected;
  }

  @override
  State<CategoryToggle> createState() => _CategoryToggleState();
}

class _CategoryToggleState extends State<CategoryToggle> {
  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: widget.isSelected ? Colors.blue : Colors.white,
            border: Border.all(color: Colors.grey.shade100),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 4,
                blurStyle: BlurStyle.normal,
              )
            ],
            borderRadius: BorderRadius.circular(15)),
        child: InkWell(
          onTap: () {
            setState(() {
              widget.changeIsSelected();
            });
            print(widget.isSelected);
            widget.function();
          },
          child: SvgPicture.asset(
            widget.picturePath,
            colorFilter: ColorFilter.mode(
                widget.isSelected ? Colors.white : Colors.blue,
                BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
