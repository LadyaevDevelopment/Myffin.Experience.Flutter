// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/enums/age_category.dart";
import "package:sal/src/enums/client_family_role.dart";

class ClientModel {
  int id;

  bool isBlocked;

  String email;

  String pinCode;

  DateTime registrationDate;

  AgeCategory ageCategory;

  int? familyId;

  ClientFamilyRole familyRoleId;

  String firstName;

  String lastName;

  ClientModel({required this.id, required this.isBlocked, required this.email, required this.pinCode, required this.registrationDate, required this.ageCategory, this.familyId, required this.familyRoleId, required this.firstName, required this.lastName});

  factory ClientModel.fromJson(dynamic json) => ClientModel(
      id: json['id'] as int,
      isBlocked: json['isBlocked'] as bool,
      email: json['email'] as String,
      pinCode: json['pinCode'] as String,
      registrationDate: DateTime.fromMillisecondsSinceEpoch(json['registrationDate'] as int),
      ageCategory: AgeCategoryExtensions.fromString(json['ageCategory']),
      familyId: (json['familyId'] == null) ? null : json['familyId'] as int,
      familyRoleId: ClientFamilyRoleExtensions.fromString(json['familyRoleId']),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'id': id,
	  'isBlocked': isBlocked,
	  'email': email,
	  'pinCode': pinCode,
	  'registrationDate': registrationDate.millisecondsSinceEpoch,
	  'ageCategory': ageCategory.stringValue,
	  'familyId': (familyId == null) ? null : familyId!,
	  'familyRoleId': familyRoleId.stringValue,
	  'firstName': firstName,
	  'lastName': lastName,
	};
}
