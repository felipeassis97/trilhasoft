import 'package:flutter/material.dart';

void main() => runApp(Column(
      children: <Widget>[
        Text(
          'Texto 1',
          textDirection: TextDirection.ltr,
        ),
        Text(
          'Texto 2',
          textDirection: TextDirection.ltr,
        ),
        Column(
          children: <Widget>[
            Text(
              'Texto 3',
              textDirection: TextDirection.ltr,
            ),
            Text(
              'Texto 4',
              textDirection: TextDirection.ltr,
            ),
          ],
        ),
      ],
    ));
