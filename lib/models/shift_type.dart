import 'package:flutter_open_hours/models/shift_combined_time.dart';

enum ShiftType { one, two }

class RestaurantShift {
  final ShiftType shiftType;
  final ShiftCombinedTime startTime;
  final ShiftCombinedTime endTime;

  RestaurantShift({
    this.shiftType,
    this.startTime,
    this.endTime,
  });
}
