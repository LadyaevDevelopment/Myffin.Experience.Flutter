// ignore_for_file: prefer_inlined_adds
// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/api_clients/interfaces/family_api_client.dart";
import "package:sal/src/api_clients/network/base_api_network_client.dart";
import "package:sal/src/api_clients/network/api_network_client_configuration.dart";
import "package:sal/src/models/family_models/family_create_model.dart";
import "package:sal/src/models/family_models/family_model.dart";
import "package:sal/src/requests/delete_request.dart";
import "package:sal/src/requests/empty_request.dart";
import "package:sal/src/responses/empty_response.dart";
import "package:sal/src/responses/family/family_roles_response.dart";
import "package:sal/src/responses/response_wrapper.dart";

class FamilyApiNetworkClient extends BaseApiNetworkClient implements FamilyApiClient {
  FamilyApiNetworkClient(ApiNetworkClientConfiguration configuration) : super(configuration);

  @override
  Future<ResponseWrapper<FamilyModel>> get({required EmptyRequest? request, required String accessToken}) async {
    return makeRequest<int, ResponseWrapper<FamilyModel>>("GET", "Family", null, null,     
      (json) => ResponseWrapper<FamilyModel>.fromJson(json, (json) => FamilyModel.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<FamilyRolesResponse>> familyRole({required EmptyRequest? request, required String accessToken}) async {
    return makeRequest<int, ResponseWrapper<FamilyRolesResponse>>("GET", "Family/FamilyRole", null, null,     
      (json) => ResponseWrapper<FamilyRolesResponse>.fromJson(json, (json) => FamilyRolesResponse.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<EmptyResponse>> createFamily({required FamilyCreateModel? request, required String accessToken}) async {
    return makeRequest<FamilyCreateModel, ResponseWrapper<EmptyResponse>>("POST", "Family/CreateFamily", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<EmptyResponse>.fromJson(json, (json) => EmptyResponse.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<FamilyModel>> add({required FamilyModel? request, required String accessToken}) async {
    return makeRequest<FamilyModel, ResponseWrapper<FamilyModel>>("POST", "Family", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<FamilyModel>.fromJson(json, (json) => FamilyModel.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<FamilyModel>> update({required FamilyModel? request, required String accessToken}) async {
    return makeRequest<FamilyModel, ResponseWrapper<FamilyModel>>("PUT", "Family", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<FamilyModel>.fromJson(json, (json) => FamilyModel.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<EmptyResponse>> delete({required DeleteRequest? request, required String accessToken}) async {
		final queryParameters = <MapEntry<String, String?>>[]
      ..add(MapEntry("Id", request?.id.toString()));
    return makeRequest<int, ResponseWrapper<EmptyResponse>>("DELETE", buildQueryAddress("Family", queryParameters), null, null,     
      (json) => ResponseWrapper<EmptyResponse>.fromJson(json, (json) => EmptyResponse.fromJson(json)), accessToken);
    }
}
