import 'package:flutter/material.dart';
import 'package:flutter_open_hours/item_container.dart';

class Days extends StatelessWidget {
  final List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        for (var item in days)
          StringBox(
            string: item,
          ),
      ],
    );
  }
}
