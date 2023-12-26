import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutronutro/Screens/ProductDetailsScreen.dart';

import '../ModelsAndData/GroceryItem.dart';

class GroceryItemWidget extends StatefulWidget {
  GroceryItemWidget({required this.groceryItem, Key? key}) : super(key: key);
  GroceryItem groceryItem;

  @override
  State<GroceryItemWidget> createState() => _GroceryItemWidgetState();
}

class _GroceryItemWidgetState extends State<GroceryItemWidget> {
  bool isSelected = false;

  void changeIsSelected() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 10,
      onTap: () {
        Get.to(() => ProductDetails(
              title: widget.groceryItem.title,
              source: widget.groceryItem.source,
              imagePath: widget.groceryItem.imagePath,
              price: widget.groceryItem.price.toString(),
              longDescription: widget.groceryItem.longDescription,
              heroTag: widget.groceryItem.title,
            ));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade100,
              spreadRadius: 1,
              blurStyle: BlurStyle.inner,
              blurRadius: 15,
            )
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/Images/Carrot.png',
                    height: 20,
                  ),
                ),
                Text(
                  'Availability',
                  style: GoogleFonts.raleway(color: Colors.blue),
                ),
                InkWell(
                  radius: 30,
                  onTap: () {
                    changeIsSelected();
                  },
                  child: SvgPicture.asset(
                    'assets/SVGs/Heart.svg',
                    colorFilter: ColorFilter.mode(
                      isSelected ? Colors.red.shade900 : Colors.grey,
                      BlendMode.srcIn,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: Image.asset(
                widget.groceryItem.imagePath,
                height: 100,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.groceryItem.title,
              style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                widget.groceryItem.shortDescription,
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade400,
                    fontSize: widget.groceryItem.shortDescription.length > 7
                        ? 12
                        : 14),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.groceryItem.price.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                const Text(
                  'RM',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
