import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard(
      {Key? key,
      required this.mainText,
      required this.pargraphText,
      required this.buttonText,
      required this.imagePath})
      : super(key: key);
  final String mainText;
  final String pargraphText;
  final String imagePath;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5, bottom: 5),
                  child: Text(
                    mainText,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 0, bottom: 10),
                  child: Text(
                    pargraphText,
                    style: GoogleFonts.raleway(color: Colors.white),
                    maxLines: 2,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 0),
                  child: OutlinedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.white,
                          ),
                          side: MaterialStatePropertyAll(BorderSide.none)),
                      onPressed: () {},
                      child: Text(
                        buttonText,
                        style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Image.asset(
                imagePath,
                height: 150,
              ),
            )
          ],
        ));
  }
}
