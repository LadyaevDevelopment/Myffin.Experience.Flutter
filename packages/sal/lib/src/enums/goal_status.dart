enum GoalStatus {
  open,

  closed
}

extension GoalStatusExtensions on GoalStatus {
  String get stringValue {
    switch (this) {
      case GoalStatus.open:
        return 'Open';
      case GoalStatus.closed:
        return 'Closed';
    }
  }

 static GoalStatus fromString(String value) {
    switch (value) {
      case 'Open':
        return GoalStatus.open;
      case 'Closed':
        return GoalStatus.closed;
      default:
	    throw Exception("$value is not a valid value of enumeration GoalStatus");
    }
  }
}
