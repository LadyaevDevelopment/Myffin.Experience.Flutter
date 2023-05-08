enum DealType {
  oneTime,

  weekly
}

extension DealTypeExtensions on DealType {
  String get stringValue {
    switch (this) {
      case DealType.oneTime:
        return 'OneTime';
      case DealType.weekly:
        return 'Weekly';
    }
  }

 static DealType fromString(String value) {
    switch (value) {
      case 'OneTime':
        return DealType.oneTime;
      case 'Weekly':
        return DealType.weekly;
      default:
	    throw Exception("$value is not a valid value of enumeration GoalStatus");
    }
  }
}
