import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ReviewIndicator extends StatelessWidget {
  const ReviewIndicator({
    super.key,
    required this.leadingText,
    required this.suffixText,
  });

  final String leadingText;
  final int suffixText;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(leadingText,
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 8, 20, 134))),
      const SizedBox(
        width: 3,
      ),
      Container(
        width: MediaQuery.of(context).size.width - 65,
        child: LinearPercentIndicator(
          lineHeight: 30,
          barRadius: const Radius.circular(10),
          percent: suffixText / 100,
          backgroundColor: Colors.grey.shade300,
          progressColor: const Color.fromARGB(255, 255, 154, 17),
          trailing: Text(
            '${suffixText.toString()}%',
            style: const TextStyle(color: Color.fromARGB(255, 8, 20, 134)),
          ),
        ),
      )
    ]);
  }
}
