// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class EmptyRequest {
  EmptyRequest();

  factory EmptyRequest.fromJson(dynamic json) => EmptyRequest(
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	};
}
