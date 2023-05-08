// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class DealCategoryModel {
  int id;

  int value;

  String name;

  DealCategoryModel({required this.id, required this.value, required this.name});

  factory DealCategoryModel.fromJson(dynamic json) => DealCategoryModel(
      id: json['id'] as int,
      value: json['value'] as int,
      name: json['name'] as String,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'id': id,
	  'value': value,
	  'name': name,
	};
}
