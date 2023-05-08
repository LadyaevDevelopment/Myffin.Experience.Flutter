// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/enums/day_of_week.dart";
import "package:sal/src/enums/deal_type.dart";
import "package:sal/src/models/photo_models/photo_model.dart";

class DealModel {
  int id;

  int? categoryId;

  String name;

  int cost;

  DateTime date;

  int familyId;

  int authorId;

  DealType type;

  String photoLink;

  PhotoModel photoModel;

  List<DayOfWeek> activityDays;

  DealModel({required this.id, this.categoryId, required this.name, required this.cost, required this.date, required this.familyId, required this.authorId, required this.type, required this.photoLink, required this.photoModel, required this.activityDays});

  factory DealModel.fromJson(dynamic json) => DealModel(
      id: json['id'] as int,
      categoryId: (json['categoryId'] == null) ? null : json['categoryId'] as int,
      name: json['name'] as String,
      cost: json['cost'] as int,
      date: DateTime.fromMillisecondsSinceEpoch(json['date'] as int),
      familyId: json['familyId'] as int,
      authorId: json['authorId'] as int,
      type: DealTypeExtensions.fromString(json['type']),
      photoLink: json['photoLink'] as String,
      photoModel: PhotoModel.fromJson(json['photoModel']),
      activityDays: (json['activityDays'] as List<dynamic>).map((element) => DayOfWeekExtensions.fromString(element)).toList(),
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'id': id,
	  'categoryId': (categoryId == null) ? null : categoryId!,
	  'name': name,
	  'cost': cost,
	  'date': date.millisecondsSinceEpoch,
	  'familyId': familyId,
	  'authorId': authorId,
	  'type': type.stringValue,
	  'photoLink': photoLink,
	  'photoModel': photoModel.toJson(),
	  'activityDays': activityDays.map((element) => element.stringValue).toList(),
	};
}
