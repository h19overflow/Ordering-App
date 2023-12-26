import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutronutro/Widgets/BigActionButton.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget(
      {super.key,
      required this.userName,
      required this.rating,
      required this.review,
      required this.imagePath});

  final String userName;
  final int rating;
  final String imagePath;
  final String review;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Divider(
            height: 0,
            color: Colors.grey.shade300,
          ),
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: MediaQuery.of(context).size.width - 10,
              child: ListTile(
                leading: CircleAvatar(
                  child: Image.asset(imagePath),
                ),
                title: Text(userName),
                subtitle: Row(
                  children: [
                    Row(
                      children: List.generate(
                          5,
                          (index) => Icon(Icons.star_rounded,
                              color: rating > index
                                  ? const Color.fromARGB(255, 255, 176, 4)
                                  : Colors.grey.shade200)),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      '${rating.toString()}.0',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width:80,
                    ),
                    Container(
                      margin: EdgeInsets.only(top:5),
                      child: const Text(
                        'Date of Review',
                        style: TextStyle(fontSize: 9,color: Colors.grey,fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(review),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: BigActionButton(
            text: 'Submit',
            color: const Color.fromARGB(255, 1, 97, 254),
            borderRadius: 5,
            function: () {},
          ),
        )
      ],
    );
  }
}
