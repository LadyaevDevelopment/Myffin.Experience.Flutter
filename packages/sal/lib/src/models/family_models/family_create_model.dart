// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/enums/age_category.dart";

class FamilyCreateModel {
  String firstName;

  String lastName;

  String familyName;

  AgeCategory ageCategory;

  int familyRoleId;

  FamilyCreateModel({required this.firstName, required this.lastName, required this.familyName, required this.ageCategory, required this.familyRoleId});

  factory FamilyCreateModel.fromJson(dynamic json) => FamilyCreateModel(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      familyName: json['familyName'] as String,
      ageCategory: AgeCategoryExtensions.fromString(json['ageCategory']),
      familyRoleId: json['familyRoleId'] as int,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'firstName': firstName,
	  'lastName': lastName,
	  'familyName': familyName,
	  'ageCategory': ageCategory.stringValue,
	  'familyRoleId': familyRoleId,
	};
}
