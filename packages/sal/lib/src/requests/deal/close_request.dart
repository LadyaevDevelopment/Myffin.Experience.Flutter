// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class CloseRequest {
  int id;

  CloseRequest({required this.id});

  factory CloseRequest.fromJson(dynamic json) => CloseRequest(
      id: json['id'] as int,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'id': id,
	};
}
