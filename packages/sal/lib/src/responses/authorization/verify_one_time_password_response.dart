// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/enums/verification_error_status.dart";

class VerifyOneTimePasswordResponse {
  int clientId;

  bool isPinCodeSet;

  bool isFamilyCreated;

  VerificationErrorStatus? errorStatus;

  int? blockedTimeInSeconds;

  int? attemptMaxCount;

  VerifyOneTimePasswordResponse({required this.clientId, required this.isPinCodeSet, required this.isFamilyCreated, this.errorStatus, this.blockedTimeInSeconds, this.attemptMaxCount});

  factory VerifyOneTimePasswordResponse.fromJson(dynamic json) => VerifyOneTimePasswordResponse(
      clientId: json['clientId'] as int,
      isPinCodeSet: json['isPinCodeSet'] as bool,
      isFamilyCreated: json['isFamilyCreated'] as bool,
      errorStatus: (json['errorStatus'] == null) ? null : VerificationErrorStatusExtensions.fromString(json['errorStatus']),
      blockedTimeInSeconds: (json['blockedTimeInSeconds'] == null) ? null : json['blockedTimeInSeconds'] as int,
      attemptMaxCount: (json['attemptMaxCount'] == null) ? null : json['attemptMaxCount'] as int,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'clientId': clientId,
	  'isPinCodeSet': isPinCodeSet,
	  'isFamilyCreated': isFamilyCreated,
	  'errorStatus': (errorStatus == null) ? null : errorStatus!.stringValue,
	  'blockedTimeInSeconds': (blockedTimeInSeconds == null) ? null : blockedTimeInSeconds!,
	  'attemptMaxCount': (attemptMaxCount == null) ? null : attemptMaxCount!,
	};
}
