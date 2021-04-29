import 'package:flutter/material.dart';
import 'package:flutter_open_hours/item_container.dart';
import 'package:flutter_open_hours/models/opening_hours.dart';

class DotsForBothShift extends StatefulWidget {
  final List<OpeningHours> wholeWeekHours;

  const DotsForBothShift({Key key, this.wholeWeekHours}) : super(key: key);

  @override
  _DotsForBothShiftState createState() => _DotsForBothShiftState();
}

class _DotsForBothShiftState extends State<DotsForBothShift> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        for (var item in wholeWeekHours)
          if (isOpen(item) &&
              (hasFirstShift(item) == true) &&
              (hasSecondShift(item) == true))
            IconBox(
              icon: Icons.circle,
            )
          else
            StringBox(
              string: ' ',
            )
      ],
    );
  }
}
