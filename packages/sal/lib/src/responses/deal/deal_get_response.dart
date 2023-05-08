// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/models/deal_models/deal_model.dart";

class DealGetResponse {
  List<DealModel> deals;

  DealGetResponse({required this.deals});

  factory DealGetResponse.fromJson(dynamic json) => DealGetResponse(
      deals: (json['deals'] as List<dynamic>).map((element) => DealModel.fromJson(element)).toList(),
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'deals': deals.map((element) => element.toJson()).toList(),
	};
}
