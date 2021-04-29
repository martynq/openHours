import 'package:flutter/material.dart';
import 'package:flutter_open_hours/item_container.dart';
import 'package:flutter_open_hours/models/opening_hours.dart';

class EveningOpeningHours extends StatefulWidget {
  final List<OpeningHours> wholeWeekHours;

  const EveningOpeningHours({Key key, this.wholeWeekHours}) : super(key: key);

  @override
  _EveningOpeningHoursState createState() => _EveningOpeningHoursState();
}

class _EveningOpeningHoursState extends State<EveningOpeningHours> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        for (var item in wholeWeekHours)
          if (isOpen(item) && (hasSecondShift(item) == true))
            StringBox(
              string: openingHoursSecondShift(item),
            )
          else
            StringBox(
              string: 'Closed',
            )
      ],
    );
  }
}
