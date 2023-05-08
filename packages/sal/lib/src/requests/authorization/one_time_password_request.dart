// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class OneTimePasswordRequest {
  String email;

  OneTimePasswordRequest({required this.email});

  factory OneTimePasswordRequest.fromJson(dynamic json) => OneTimePasswordRequest(
      email: json['email'] as String,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'email': email,
	};
}
