// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class FamilyRoleModel {
  int id;

  String name;

  FamilyRoleModel({required this.id, required this.name});

  factory FamilyRoleModel.fromJson(dynamic json) => FamilyRoleModel(
      id: json['id'] as int,
      name: json['name'] as String,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'id': id,
	  'name': name,
	};
}
