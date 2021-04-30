import 'package:flutter/material.dart';
import 'package:flutter_open_hours/item_container.dart';
import 'package:flutter_open_hours/models/opening_hours.dart';

class EveningOpeningHours extends StatefulWidget {
  final List<OpeningHours> wholeWeekHours;
  final int indexNumber;

  const EveningOpeningHours({Key key, this.wholeWeekHours, this.indexNumber})
      : super(key: key);

  @override
  _EveningOpeningHoursState createState() => _EveningOpeningHoursState();
}

class _EveningOpeningHoursState extends State<EveningOpeningHours> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        if (isOpen(wholeWeekHours[widget.indexNumber]) &&
            (hasSecondShift(wholeWeekHours[widget.indexNumber]) == true))
          ItemContainer(
            isEveningColumn: true,
            string: openingHoursSecondShift(wholeWeekHours[widget.indexNumber]),
          )
        else if (isOpen(wholeWeekHours[widget.indexNumber]) == true)
          ItemContainer(
            string: ' ',
            isEveningColumn: true,
          )
        else
          ItemContainer(
            isEveningColumn: true,
            string: 'Closed',
          )
      ],
    );
  }
}
