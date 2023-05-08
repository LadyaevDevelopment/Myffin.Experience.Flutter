// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class GetRequest {
  DateTime date;

  GetRequest({required this.date});

  factory GetRequest.fromJson(dynamic json) => GetRequest(
      date: DateTime.fromMillisecondsSinceEpoch(json['date'] as int),
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'date': date.millisecondsSinceEpoch,
	};
}
