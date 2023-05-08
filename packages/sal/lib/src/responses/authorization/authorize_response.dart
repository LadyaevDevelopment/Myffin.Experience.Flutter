// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class AuthorizeResponse {
  String token;

  AuthorizeResponse({required this.token});

  factory AuthorizeResponse.fromJson(dynamic json) => AuthorizeResponse(
      token: json['token'] as String,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'token': token,
	};
}
