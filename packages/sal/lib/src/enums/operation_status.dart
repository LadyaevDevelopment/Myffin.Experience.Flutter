enum OperationStatus {
  success,

  forbidden,

  invalidRequest,

  unsupportedApiVersion,

  maintenance,

  failed,

  recordNotFound
}

extension OperationStatusExtensions on OperationStatus {
  String get stringValue {
    switch (this) {
      case OperationStatus.success:
        return 'Success';
      case OperationStatus.forbidden:
        return 'Forbidden';
      case OperationStatus.invalidRequest:
        return 'InvalidRequest';
      case OperationStatus.unsupportedApiVersion:
        return 'UnsupportedApiVersion';
      case OperationStatus.maintenance:
        return 'Maintenance';
      case OperationStatus.failed:
        return 'Failed';
      case OperationStatus.recordNotFound:
        return 'RecordNotFound';
    }
  }

 static OperationStatus fromString(String value) {
    switch (value) {
      case 'Success':
        return OperationStatus.success;
      case 'Forbidden':
        return OperationStatus.forbidden;
      case 'InvalidRequest':
        return OperationStatus.invalidRequest;
      case 'UnsupportedApiVersion':
        return OperationStatus.unsupportedApiVersion;
      case 'Maintenance':
        return OperationStatus.maintenance;
      case 'Failed':
        return OperationStatus.failed;
      case 'RecordNotFound':
        return OperationStatus.recordNotFound;
      default:
	    throw Exception("$value is not a valid value of enumeration GoalStatus");
    }
  }
}
