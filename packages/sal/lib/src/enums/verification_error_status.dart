enum VerificationErrorStatus {
  wrongCode,

  oneTimePasswordLifetimeExpired,

  attemptsExceeded
}

extension VerificationErrorStatusExtensions on VerificationErrorStatus {
  String get stringValue {
    switch (this) {
      case VerificationErrorStatus.wrongCode:
        return 'WrongCode';
      case VerificationErrorStatus.oneTimePasswordLifetimeExpired:
        return 'OneTimePasswordLifetimeExpired';
      case VerificationErrorStatus.attemptsExceeded:
        return 'AttemptsExceeded';
    }
  }

 static VerificationErrorStatus fromString(String value) {
    switch (value) {
      case 'WrongCode':
        return VerificationErrorStatus.wrongCode;
      case 'OneTimePasswordLifetimeExpired':
        return VerificationErrorStatus.oneTimePasswordLifetimeExpired;
      case 'AttemptsExceeded':
        return VerificationErrorStatus.attemptsExceeded;
      default:
	    throw Exception("$value is not a valid value of enumeration GoalStatus");
    }
  }
}
