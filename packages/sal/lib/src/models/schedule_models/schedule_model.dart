// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class ScheduleModel {
  int id;

  String name;

  String startTime;

  String endTime;

  DateTime date;

  int familyId;

  int authorId;

  ScheduleModel({required this.id, required this.name, required this.startTime, required this.endTime, required this.date, required this.familyId, required this.authorId});

  factory ScheduleModel.fromJson(dynamic json) => ScheduleModel(
      id: json['id'] as int,
      name: json['name'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      date: DateTime.fromMillisecondsSinceEpoch(json['date'] as int),
      familyId: json['familyId'] as int,
      authorId: json['authorId'] as int,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'id': id,
	  'name': name,
	  'startTime': startTime,
	  'endTime': endTime,
	  'date': date.millisecondsSinceEpoch,
	  'familyId': familyId,
	  'authorId': authorId,
	};
}
