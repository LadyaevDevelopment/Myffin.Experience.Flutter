// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/enums/goal_status.dart";

class GetStatusRequest {
  int id;

  GoalStatus status;

  GetStatusRequest({required this.id, required this.status});

  factory GetStatusRequest.fromJson(dynamic json) => GetStatusRequest(
      id: json['id'] as int,
      status: GoalStatusExtensions.fromString(json['status']),
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'id': id,
	  'status': status.stringValue,
	};
}
