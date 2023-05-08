enum AuthorizationErrorStatus {
  userIsBlocked,

  incorrectEmail,

  userIsTemporaryBlocked
}

extension AuthorizationErrorStatusExtensions on AuthorizationErrorStatus {
  String get stringValue {
    switch (this) {
      case AuthorizationErrorStatus.userIsBlocked:
        return 'UserIsBlocked';
      case AuthorizationErrorStatus.incorrectEmail:
        return 'IncorrectEmail';
      case AuthorizationErrorStatus.userIsTemporaryBlocked:
        return 'UserIsTemporaryBlocked';
    }
  }

 static AuthorizationErrorStatus fromString(String value) {
    switch (value) {
      case 'UserIsBlocked':
        return AuthorizationErrorStatus.userIsBlocked;
      case 'IncorrectEmail':
        return AuthorizationErrorStatus.incorrectEmail;
      case 'UserIsTemporaryBlocked':
        return AuthorizationErrorStatus.userIsTemporaryBlocked;
      default:
	    throw Exception("$value is not a valid value of enumeration GoalStatus");
    }
  }
}
