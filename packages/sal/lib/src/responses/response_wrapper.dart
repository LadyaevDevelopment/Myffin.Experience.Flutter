// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/enums/operation_status.dart";

class ResponseWrapper<T> {
  OperationStatus operationStatus;

  T? responseData;

  ResponseWrapper({required this.operationStatus, this.responseData});

  factory ResponseWrapper.fromJson(dynamic json, T Function(Object? json) fromJsonT) => ResponseWrapper<T>(
      operationStatus: OperationStatusExtensions.fromString(json['operationStatus']),
      responseData: fromJsonT(json['responseData']),
	);
  
  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) => <String, dynamic>{
	  'operationStatus': operationStatus.stringValue,
	  'responseData': (responseData == null) ? null : toJsonT(responseData!),
	};
}
