// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class PinCodeRequest {
  int clientId;

  String pinCode;

  PinCodeRequest({required this.clientId, required this.pinCode});

  factory PinCodeRequest.fromJson(dynamic json) => PinCodeRequest(
      clientId: json['clientId'] as int,
      pinCode: json['pinCode'] as String,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'clientId': clientId,
	  'pinCode': pinCode,
	};
}
