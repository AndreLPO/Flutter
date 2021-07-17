import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class GridItemWidget extends StatelessWidget {
  const GridItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://img-c.udemycdn.com/course/240x135/1764438_44b7_5.jpg',
          fit: BoxFit.fitWidth,
        ),
        SizedBox(height: 4),
        Flexible(
          child: AutoSizeText(
            'Criação de Apps Android e IOS com Flutter - Crie 16 Apps',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            maxLines: 2,
            minFontSize: 1,
          ),
        ),
        SizedBox(
          height: 4,
        ),
       Text(
          'Daniel Ciolfi',
          style: TextStyle(color: Colors.grey[600]),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          'R\$22,90',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ],
    );
  }
}
