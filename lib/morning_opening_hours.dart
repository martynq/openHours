import 'package:flutter/material.dart';
import 'package:flutter_open_hours/item_container.dart';
import 'package:flutter_open_hours/models/opening_hours.dart';

class MorningOpeningHours extends StatefulWidget {
  final List<OpeningHours> wholeWeekHours;
  final int indexNumber;

  const MorningOpeningHours({Key key, this.wholeWeekHours, this.indexNumber})
      : super(key: key);

  @override
  _MorningOpeningHoursState createState() => _MorningOpeningHoursState();
}

class _MorningOpeningHoursState extends State<MorningOpeningHours> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: (isOpen(wholeWeekHours[widget.indexNumber]) &&
                (hasFirstShift(wholeWeekHours[widget.indexNumber]) == true))
            ? ItemContainer(
                string:
                    openingHoursFirstShift(wholeWeekHours[widget.indexNumber]),
              )
            : ItemContainer(string: ' '));
  }
}
