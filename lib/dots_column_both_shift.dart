import 'package:flutter/material.dart';
import 'package:flutter_open_hours/item_container.dart';
import 'package:flutter_open_hours/models/opening_hours.dart';

class DotsForBothShift extends StatefulWidget {
  final List<OpeningHours> wholeWeekHours;
  final int indexNumber;

  const DotsForBothShift({Key key, this.wholeWeekHours, this.indexNumber})
      : super(key: key);

  @override
  _DotsForBothShiftState createState() => _DotsForBothShiftState();
}

class _DotsForBothShiftState extends State<DotsForBothShift> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        if (isOpen(wholeWeekHours[widget.indexNumber]) &&
            (hasFirstShift(wholeWeekHours[widget.indexNumber]) == true) &&
            (hasSecondShift(wholeWeekHours[widget.indexNumber]) == true))
          ItemContainer(
            isThinColumn: true,
            isIconColumn: true,
            icon: Icons.circle,
          )
        else
          ItemContainer(
            isThinColumn: true,
          isIconColumn: true,),
      ],
    );
  }
}
