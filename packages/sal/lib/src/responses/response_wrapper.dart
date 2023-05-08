// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/enums/operation_status.dart";

class ResponseWrapper<TData> {
  OperationStatus operationStatus;

  TData? responseData;

  ResponseWrapper({required this.operationStatus, this.responseData});

  factory ResponseWrapper.fromJson(dynamic json, TData Function(Object? json) fromJsonTData) => ResponseWrapper<TData>(
      operationStatus: OperationStatusExtensions.fromString(json['operationStatus']),
      responseData: fromJsonTData(json['responseData']),
	);
  
  Map<String, dynamic> toJson(Object? Function(TData value) toJsonTData) => <String, dynamic>{
	  'operationStatus': operationStatus.stringValue,
	  'responseData': (responseData == null) ? null : toJsonTData(responseData!),
	};
}
