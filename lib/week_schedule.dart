import 'package:flutter/material.dart';
import 'package:flutter_open_hours/days_column.dart';
import 'package:flutter_open_hours/dots_column_both_shift.dart';
import 'package:flutter_open_hours/evening_opening_hours.dart';
import 'package:flutter_open_hours/models/opening_hours.dart';
import 'package:flutter_open_hours/morning_opening_hours.dart';

class WeekSchedule extends StatefulWidget {
  final List<OpeningHours> wholeWeekHours;

  WeekSchedule({Key key, this.title, this.wholeWeekHours}) : super(key: key);

  final String title;

  @override
  _WeekScheduleState createState() => _WeekScheduleState();
}

class _WeekScheduleState extends State<WeekSchedule> {
  final List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 400,
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Row(
          children: [
            Flexible(
                flex: 2,
                child: Column(
                  children: [Icon(Icons.watch_later_rounded)],
                )),
            Flexible(
              flex: 1,
              child: const SizedBox(
                width: 20,
              ),
            ),
            Flexible(
              flex: 2,
              child: Days(),
            ),
            Flexible(
              flex: 1,
              child: const SizedBox(
                width: 20,
              ),
            ),
            Flexible(
              flex: 5,
              child: MorningOpeningHours(),
            ),
            Flexible(
              flex: 1,
              child: const SizedBox(
                width: 20,
              ),
            ),
            Flexible(
              flex: 1,
              child: DotsForBothShift(),
            ),
            Flexible(
              flex: 1,
              child: const SizedBox(
                width: 20,
              ),
            ),
            Flexible(
              flex: 5,
              child: EveningOpeningHours(),
            ),
          ],
        ),
      ),
    );
  }
}
