import 'package:flutter/material.dart';
import 'package:flutter_open_hours/item_container.dart';
import 'package:flutter_open_hours/models/opening_hours.dart';

class MorningOpeningHours extends StatefulWidget {
  final List<OpeningHours> wholeWeekHours;

  const MorningOpeningHours({Key key, this.wholeWeekHours}) : super(key: key);

  @override
  _MorningOpeningHoursState createState() => _MorningOpeningHoursState();
}

class _MorningOpeningHoursState extends State<MorningOpeningHours> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        for (var item in wholeWeekHours)
          if (isOpen(item) && (hasFirstShift(item) == true))
            StringBox(
              string: openingHoursFirstShift(item),
            )
          else
            StringBox(string: ' ')
      ],
    );
  }
}
