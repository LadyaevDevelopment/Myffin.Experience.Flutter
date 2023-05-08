// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class DeleteRequest {
  int id;

  DeleteRequest({required this.id});

  factory DeleteRequest.fromJson(dynamic json) => DeleteRequest(
      id: json['id'] as int,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'id': id,
	};
}
