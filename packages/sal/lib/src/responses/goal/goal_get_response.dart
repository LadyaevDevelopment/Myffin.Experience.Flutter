// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/models/goal_models/goal_model.dart";

class GoalGetResponse {
  List<GoalModel> goals;

  GoalGetResponse({required this.goals});

  factory GoalGetResponse.fromJson(dynamic json) => GoalGetResponse(
      goals: (json['goals'] as List<dynamic>).map((element) => GoalModel.fromJson(element)).toList(),
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'goals': goals.map((element) => element.toJson()).toList(),
	};
}
