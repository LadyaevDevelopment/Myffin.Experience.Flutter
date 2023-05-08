// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class VerifyOneTimePasswordRequest {
  int oneTimePasswordId;

  String code;

  VerifyOneTimePasswordRequest({required this.oneTimePasswordId, required this.code});

  factory VerifyOneTimePasswordRequest.fromJson(dynamic json) => VerifyOneTimePasswordRequest(
      oneTimePasswordId: json['oneTimePasswordId'] as int,
      code: json['code'] as String,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'oneTimePasswordId': oneTimePasswordId,
	  'code': code,
	};
}
