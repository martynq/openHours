import 'package:flutter/material.dart';
import 'package:flutter_open_hours/item_container.dart';
import 'package:flutter_open_hours/models/opening_hours.dart';

class OpeningHours extends StatelessWidget {
  final int indexNumber;
  final bool eveningOpenHour;

  const OpeningHours({Key key, this.indexNumber, this.eveningOpenHour})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        if (isOpen(wholeWeekHours[indexNumber]) &&
            (hasSecondShift(wholeWeekHours[indexNumber]) == true) &&
            eveningOpenHour == true)
          ItemContainer(
            isEveningColumn: true,
            string: openingHoursSecondShift(wholeWeekHours[indexNumber]),
          )
        else if (isOpen(wholeWeekHours[indexNumber]) &&
            (hasFirstShift(wholeWeekHours[indexNumber]) == true) &&
            eveningOpenHour == false)
          ItemContainer(
            string: openingHoursFirstShift(wholeWeekHours[indexNumber]),
          )
        else if (isOpen(wholeWeekHours[indexNumber]) == true)
          ItemContainer(
            string: ' ',
            isEveningColumn: true,
          )
        else if (hasSecondShift(wholeWeekHours[indexNumber]) == false &&
            eveningOpenHour == true)
          ItemContainer(
            isEveningColumn: true,
            string: 'Closed',
          )
        else
          ItemContainer(
            isEveningColumn: true,
            string: ' ',
          )
      ],
    );
  }
}
