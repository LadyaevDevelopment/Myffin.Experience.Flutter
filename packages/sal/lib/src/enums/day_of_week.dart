enum DayOfWeek {
  monday,

  tuesday,

  wednesday,

  thursday,

  friday,

  saturday,

  sunday
}

extension DayOfWeekExtensions on DayOfWeek {
  String get stringValue {
    switch (this) {
      case DayOfWeek.monday:
        return 'Monday';
      case DayOfWeek.tuesday:
        return 'Tuesday';
      case DayOfWeek.wednesday:
        return 'Wednesday';
      case DayOfWeek.thursday:
        return 'Thursday';
      case DayOfWeek.friday:
        return 'Friday';
      case DayOfWeek.saturday:
        return 'Saturday';
      case DayOfWeek.sunday:
        return 'Sunday';
    }
  }

 static DayOfWeek fromString(String value) {
    switch (value) {
      case 'Monday':
        return DayOfWeek.monday;
      case 'Tuesday':
        return DayOfWeek.tuesday;
      case 'Wednesday':
        return DayOfWeek.wednesday;
      case 'Thursday':
        return DayOfWeek.thursday;
      case 'Friday':
        return DayOfWeek.friday;
      case 'Saturday':
        return DayOfWeek.saturday;
      case 'Sunday':
        return DayOfWeek.sunday;
      default:
	    throw Exception("$value is not a valid value of enumeration GoalStatus");
    }
  }
}
