// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/enums/authorization_error_status.dart";

class OneTimePasswordResponse {
  int id;

  int codeLength;

  int resendingIntervalInSeconds;

  AuthorizationErrorStatus? errorStatus;

  int? blockedTimeInSeconds;

  int? attemptMaxCount;

  String? fictiveField;

  OneTimePasswordResponse({required this.id, required this.codeLength, required this.resendingIntervalInSeconds, this.errorStatus, this.blockedTimeInSeconds, this.attemptMaxCount, this.fictiveField});

  factory OneTimePasswordResponse.fromJson(dynamic json) => OneTimePasswordResponse(
      id: json['id'] as int,
      codeLength: json['codeLength'] as int,
      resendingIntervalInSeconds: json['resendingIntervalInSeconds'] as int,
      errorStatus: (json['errorStatus'] == null) ? null : AuthorizationErrorStatusExtensions.fromString(json['errorStatus']),
      blockedTimeInSeconds: (json['blockedTimeInSeconds'] == null) ? null : json['blockedTimeInSeconds'] as int,
      attemptMaxCount: (json['attemptMaxCount'] == null) ? null : json['attemptMaxCount'] as int,
      fictiveField: json['fictiveField'] as String?,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'id': id,
	  'codeLength': codeLength,
	  'resendingIntervalInSeconds': resendingIntervalInSeconds,
	  'errorStatus': (errorStatus == null) ? null : errorStatus!.stringValue,
	  'blockedTimeInSeconds': (blockedTimeInSeconds == null) ? null : blockedTimeInSeconds!,
	  'attemptMaxCount': (attemptMaxCount == null) ? null : attemptMaxCount!,
	  'fictiveField': fictiveField,
	};
}
