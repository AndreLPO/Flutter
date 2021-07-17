import 'package:flutter/material.dart';

class VantagensWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const VantagensWidget({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 50,
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Text(
              subtitle,
              style: TextStyle(fontSize: 10),
            )
          ],
        )
      ],
    );
  }
}
