import 'package:flutter/material.dart';
import 'package:flutter_open_hours/models/shift_combined_time.dart';
import 'package:flutter_open_hours/models/shift_type.dart';
import 'package:intl/intl.dart';

class OpeningHours {
  final List<RestaurantShift> shifts;

  OpeningHours({
    this.shifts,
  });
}

final OpeningHours mondayOpeningHours = OpeningHours(shifts: [
  RestaurantShift(
      shiftType: ShiftType.two,
      startTime: ShiftCombinedTime(local: 840, utc: 840),
      endTime: ShiftCombinedTime(local: 1410, utc: 1410)),
]);
final OpeningHours tuesdayOpeningHours = OpeningHours(shifts: [
  RestaurantShift(
      shiftType: ShiftType.one,
      startTime: ShiftCombinedTime(local: 540, utc: 540),
      endTime: ShiftCombinedTime(local: 720, utc: 720)),
  RestaurantShift(
      shiftType: ShiftType.two,
      startTime: ShiftCombinedTime(local: 840, utc: 840),
      endTime: ShiftCombinedTime(local: 1410, utc: 1410)),
]);
final OpeningHours wednesdayOpeningHours = OpeningHours(shifts: [
  RestaurantShift(
      shiftType: ShiftType.one,
      startTime: ShiftCombinedTime(local: 600, utc: 600),
      endTime: ShiftCombinedTime(local: 720, utc: 720)),
  RestaurantShift(
      shiftType: ShiftType.two,
      startTime: ShiftCombinedTime(local: 840, utc: 840),
      endTime: ShiftCombinedTime(local: 1410, utc: 1410)),
]);
final OpeningHours thursdayOpeningHours = OpeningHours(shifts: [
  RestaurantShift(
      shiftType: ShiftType.one,
      startTime: ShiftCombinedTime(local: 540, utc: 540),
      endTime: ShiftCombinedTime(local: 720, utc: 720)),
  RestaurantShift(
      shiftType: ShiftType.two,
      startTime: ShiftCombinedTime(local: 840, utc: 840),
      endTime: ShiftCombinedTime(local: 1410, utc: 1410)),
]);

final OpeningHours fridayOpeningHours = OpeningHours(shifts: [
  RestaurantShift(
      shiftType: ShiftType.one,
      startTime: ShiftCombinedTime(local: 540, utc: 540),
      endTime: ShiftCombinedTime(local: 720, utc: 720)),
  RestaurantShift(
      shiftType: ShiftType.two,
      startTime: ShiftCombinedTime(local: 840, utc: 840),
      endTime: ShiftCombinedTime(local: 1410, utc: 1410)),
]);

final OpeningHours saturdayOpeningHours = OpeningHours(shifts: [
  RestaurantShift(
      shiftType: ShiftType.two,
      startTime: ShiftCombinedTime(local: 540, utc: 540),
      endTime: ShiftCombinedTime(local: 30, utc: 30)),
]);

final OpeningHours sundayOpeningHours = OpeningHours(shifts: []);

final List<OpeningHours> wholeWeekHours = [
  mondayOpeningHours,
  tuesdayOpeningHours,
  wednesdayOpeningHours,
  thursdayOpeningHours,
  fridayOpeningHours,
  saturdayOpeningHours,
  sundayOpeningHours
];

bool isOpen(OpeningHours item) {
  if (item.shifts.isEmpty) {
    return false;
  }
  return true;
}

bool hasFirstShift(OpeningHours item) {
  if (item.shifts.isNotEmpty) {
    for (var shift in item.shifts) {
      if (shift.shiftType == ShiftType.one) return true;
    }
  }
  return false;
}

bool hasSecondShift(OpeningHours item) {
  if (item.shifts.isNotEmpty) {
    for (var shift in item.shifts) {
      if (shift.shiftType == ShiftType.two) return true;
    }
  }
  return false;
}

String minutesToTime(int minutes) {
  final TimeOfDay time = TimeOfDay(
    hour: (minutes / TimeOfDay.minutesPerHour).floor(),
    minute: minutes % TimeOfDay.minutesPerHour,
  );
  final DateTime today = DateTime.now();
  return DateFormat('HH:mm').format(
    DateTime(
      today.year,
      today.month,
      today.day,
      time.hour,
      time.minute,
    ),
  );
}

String openingHoursFirstShift(OpeningHours item) {
  String openHour;
  String closeHour;

  if (item.shifts.isNotEmpty) {
    for (var shift
        in item.shifts.where((element) => element.shiftType == ShiftType.one)) {
      openHour = minutesToTime(shift.startTime.local).toString();
      closeHour = minutesToTime(shift.endTime.local).toString();
      return '$openHour - $closeHour';
    }
  }
  return '';
}

String openingHoursSecondShift(OpeningHours item) {
  String openHour;
  String closeHour;

  if (item.shifts.isNotEmpty) {
    for (var shift
        in item.shifts.where((element) => element.shiftType == ShiftType.two)) {
      openHour = minutesToTime(shift.startTime.local).toString();
      closeHour = minutesToTime(shift.endTime.local).toString();
      return '$openHour - $closeHour';
    }
  }
  return '';
}
