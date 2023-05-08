// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/models/schedule_models/schedule_model.dart";

class ScheduleGetResponse {
  List<ScheduleModel> schedules;

  ScheduleGetResponse({required this.schedules});

  factory ScheduleGetResponse.fromJson(dynamic json) => ScheduleGetResponse(
      schedules: (json['schedules'] as List<dynamic>).map((element) => ScheduleModel.fromJson(element)).toList(),
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'schedules': schedules.map((element) => element.toJson()).toList(),
	};
}
