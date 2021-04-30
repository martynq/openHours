import 'package:flutter/material.dart';
import 'package:flutter_open_hours/dots_column_both_shift.dart';
import 'package:flutter_open_hours/opening_hours.dart';
import 'package:flutter_open_hours/item_container.dart';

class DayOpenHours extends StatelessWidget {
  final String day;
  final int dayIndexNumber;

  const DayOpenHours({Key key, this.day, this.dayIndexNumber})
      : super(key: key);

  factory DayOpenHours.monday() => DayOpenHours(
    day: 'Mon', dayIndexNumber: 0,
  );

  factory DayOpenHours.tuesday() => DayOpenHours(
    day: 'Tue', dayIndexNumber: 1,
  );

  factory DayOpenHours.wednesday() => DayOpenHours(
    day: 'Wed', dayIndexNumber: 2,
  );

  factory DayOpenHours.thursday() => DayOpenHours(
    day: 'Thu', dayIndexNumber: 3,
  );

  factory DayOpenHours.friday() => DayOpenHours(
    day: 'Fri', dayIndexNumber: 4,
  );

  factory DayOpenHours.saturday() => DayOpenHours(
    day: 'Sat', dayIndexNumber: 5,
  );

  factory DayOpenHours.sunday() => DayOpenHours(
    day: 'Sun', dayIndexNumber: 6,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ItemContainer(
          string: day,
          isDayColumn: true,
          isThinColumn: true,
        ),
        OpeningHours(
          eveningOpenHour: false,
          indexNumber: dayIndexNumber,
        ),
        DotsForBothShift(
          indexNumber: dayIndexNumber,
        ),
        OpeningHours(
          eveningOpenHour: true,
          indexNumber: dayIndexNumber,
        ),
      ],
    );
  }
}
