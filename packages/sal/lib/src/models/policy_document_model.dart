// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class PolicyDocumentModel {
  String title;

  String url;

  PolicyDocumentModel({required this.title, required this.url});

  factory PolicyDocumentModel.fromJson(dynamic json) => PolicyDocumentModel(
      title: json['title'] as String,
      url: json['url'] as String,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'title': title,
	  'url': url,
	};
}
