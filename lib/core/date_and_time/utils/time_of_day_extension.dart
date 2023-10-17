import 'package:flutter/material.dart';

enum TimeOfDayPeriod { night, afternoon, dawn, morning }

extension TimeOfDayExtension on TimeOfDay {
  TimeOfDayPeriod get detailedPeriod {
    if (hour >= 18 && hour <= 23) {
      return TimeOfDayPeriod.night;
    } else if (hour >= 0 && hour <= 6) {
      return TimeOfDayPeriod.dawn;
    } else if (hour >= 12 && hour < 18) {
      return TimeOfDayPeriod.afternoon;
    }
    return TimeOfDayPeriod.morning;
  }

  IconData get periodIcon {
    switch (detailedPeriod) {
      case TimeOfDayPeriod.night:
        return Icons.nightlight;
      case TimeOfDayPeriod.afternoon:
        return Icons.sunny;
      case TimeOfDayPeriod.dawn:
        return Icons.star;
      case TimeOfDayPeriod.morning:
        return Icons.sunny_snowing;
    }
  }
}
