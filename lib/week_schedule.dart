import 'package:flutter/material.dart';
import 'package:flutter_open_hours/day_open_hour_row.dart';

class WeekSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 400,
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.watch_later_rounded),
            Column(
              children: [
                DayOpenHours.monday(),
                DayOpenHours.tuesday(),
                DayOpenHours.wednesday(),
                DayOpenHours.thursday(),
                DayOpenHours.friday(),
                DayOpenHours.saturday(),
                DayOpenHours.sunday(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
