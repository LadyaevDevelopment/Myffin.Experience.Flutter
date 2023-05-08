// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class DailyInformationRequest {
  DateTime date;

  DailyInformationRequest({required this.date});

  factory DailyInformationRequest.fromJson(dynamic json) => DailyInformationRequest(
      date: DateTime.fromMillisecondsSinceEpoch(json['date'] as int),
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'date': date.millisecondsSinceEpoch,
	};
}
