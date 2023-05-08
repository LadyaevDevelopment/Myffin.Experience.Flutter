// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/models/family_models/family_role_model.dart";

class FamilyRolesResponse {
  List<FamilyRoleModel> kidRoles;

  List<FamilyRoleModel> adultRoles;

  FamilyRolesResponse({required this.kidRoles, required this.adultRoles});

  factory FamilyRolesResponse.fromJson(dynamic json) => FamilyRolesResponse(
      kidRoles: (json['kidRoles'] as List<dynamic>).map((element) => FamilyRoleModel.fromJson(element)).toList(),
      adultRoles: (json['adultRoles'] as List<dynamic>).map((element) => FamilyRoleModel.fromJson(element)).toList(),
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'kidRoles': kidRoles.map((element) => element.toJson()).toList(),
	  'adultRoles': adultRoles.map((element) => element.toJson()).toList(),
	};
}
