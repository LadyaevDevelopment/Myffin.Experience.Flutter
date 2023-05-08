// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class PolicyDocument {
  String title;

  String url;

  PolicyDocument({required this.title, required this.url});

  factory PolicyDocument.fromJson(dynamic json) => PolicyDocument(
      title: json['title'] as String,
      url: json['url'] as String,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'title': title,
	  'url': url,
	};
}
