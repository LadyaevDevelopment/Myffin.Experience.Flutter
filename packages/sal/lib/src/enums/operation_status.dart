enum OperationStatus {
  success,

  failed,

  forbidden,

  invalidRequest,

  notFound,

  unsupportedApiVersion
}

extension OperationStatusExtensions on OperationStatus {
  String get stringValue {
    switch (this) {
      case OperationStatus.success:
        return 'Success';
      case OperationStatus.failed:
        return 'Failed';
      case OperationStatus.forbidden:
        return 'Forbidden';
      case OperationStatus.invalidRequest:
        return 'InvalidRequest';
      case OperationStatus.notFound:
        return 'NotFound';
      case OperationStatus.unsupportedApiVersion:
        return 'UnsupportedApiVersion';
    }
  }

 static OperationStatus fromString(String value) {
    switch (value) {
      case 'Success':
        return OperationStatus.success;
      case 'Failed':
        return OperationStatus.failed;
      case 'Forbidden':
        return OperationStatus.forbidden;
      case 'InvalidRequest':
        return OperationStatus.invalidRequest;
      case 'NotFound':
        return OperationStatus.notFound;
      case 'UnsupportedApiVersion':
        return OperationStatus.unsupportedApiVersion;
      default:
	    throw Exception("$value is not a valid value of enumeration GoalStatus");
    }
  }
}
