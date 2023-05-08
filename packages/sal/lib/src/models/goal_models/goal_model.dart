// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/enums/goal_status.dart";
import "package:sal/src/models/photo_models/photo_model.dart";

class GoalModel {
  int id;

  String name;

  String color;

  int familyId;

  int authorId;

  GoalStatus status;

  String photoLink;

  PhotoModel photoModel;

  GoalModel({required this.id, required this.name, required this.color, required this.familyId, required this.authorId, required this.status, required this.photoLink, required this.photoModel});

  factory GoalModel.fromJson(dynamic json) => GoalModel(
      id: json['id'] as int,
      name: json['name'] as String,
      color: json['color'] as String,
      familyId: json['familyId'] as int,
      authorId: json['authorId'] as int,
      status: GoalStatusExtensions.fromString(json['status']),
      photoLink: json['photoLink'] as String,
      photoModel: PhotoModel.fromJson(json['photoModel']),
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'id': id,
	  'name': name,
	  'color': color,
	  'familyId': familyId,
	  'authorId': authorId,
	  'status': status.stringValue,
	  'photoLink': photoLink,
	  'photoModel': photoModel.toJson(),
	};
}
