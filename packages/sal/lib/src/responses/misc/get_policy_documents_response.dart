// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/models/policy_document_model.dart";

class GetPolicyDocumentsResponse {
  List<PolicyDocumentModel> documents;

  GetPolicyDocumentsResponse({required this.documents});

  factory GetPolicyDocumentsResponse.fromJson(dynamic json) => GetPolicyDocumentsResponse(
      documents: (json['documents'] as List<dynamic>).map((element) => PolicyDocumentModel.fromJson(element)).toList(),
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'documents': documents.map((element) => element.toJson()).toList(),
	};
}
