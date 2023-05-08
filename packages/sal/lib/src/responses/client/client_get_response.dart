// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/models/client_models/client_model.dart";

class ClientGetResponse {
  List<ClientModel> clients;

  ClientGetResponse({required this.clients});

  factory ClientGetResponse.fromJson(dynamic json) => ClientGetResponse(
      clients: (json['clients'] as List<dynamic>).map((element) => ClientModel.fromJson(element)).toList(),
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'clients': clients.map((element) => element.toJson()).toList(),
	};
}
