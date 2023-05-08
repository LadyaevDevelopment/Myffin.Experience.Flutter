// ignore_for_file: prefer_inlined_adds
// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/api_clients/interfaces/client_api_client.dart";
import "package:sal/src/api_clients/network/base_api_network_client.dart";
import "package:sal/src/api_clients/network/api_network_client_configuration.dart";
import "package:sal/src/models/client_models/client_model.dart";
import "package:sal/src/requests/empty_request.dart";
import "package:sal/src/responses/client/client_get_response.dart";
import "package:sal/src/responses/response_wrapper.dart";

class ClientApiNetworkClient extends BaseApiNetworkClient implements ClientApiClient {
  ClientApiNetworkClient(ApiNetworkClientConfiguration configuration) : super(configuration);

  @override
  Future<ResponseWrapper<ClientGetResponse>> get({required EmptyRequest? request, required String accessToken}) async {
    return makeRequest<int, ResponseWrapper<ClientGetResponse>>("GET", "Client", null, null,     
      (json) => ResponseWrapper<ClientGetResponse>.fromJson(json, (json) => ClientGetResponse.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<ClientModel>> add({required ClientModel? request, required String accessToken}) async {
    return makeRequest<ClientModel, ResponseWrapper<ClientModel>>("PUT", "Client", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<ClientModel>.fromJson(json, (json) => ClientModel.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<ClientModel>> update({required ClientModel? request, required String accessToken}) async {
    return makeRequest<ClientModel, ResponseWrapper<ClientModel>>("PATCH", "Client", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<ClientModel>.fromJson(json, (json) => ClientModel.fromJson(json)), accessToken);
    }
}
