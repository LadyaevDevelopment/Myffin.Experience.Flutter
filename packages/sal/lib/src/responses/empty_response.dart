// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class EmptyResponse {
  EmptyResponse();

  factory EmptyResponse.fromJson(dynamic json) => EmptyResponse(
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	};
}
