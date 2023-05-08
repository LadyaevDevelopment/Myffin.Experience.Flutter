// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/models/deal_models/deal_category_model.dart";

class DealCategoryGetResponse {
  List<DealCategoryModel> categories;

  DealCategoryGetResponse({required this.categories});

  factory DealCategoryGetResponse.fromJson(dynamic json) => DealCategoryGetResponse(
      categories: (json['categories'] as List<dynamic>).map((element) => DealCategoryModel.fromJson(element)).toList(),
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'categories': categories.map((element) => element.toJson()).toList(),
	};
}
