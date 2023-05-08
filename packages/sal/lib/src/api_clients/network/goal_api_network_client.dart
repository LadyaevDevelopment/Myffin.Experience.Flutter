// ignore_for_file: prefer_inlined_adds
// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/api_clients/interfaces/goal_api_client.dart";
import "package:sal/src/api_clients/network/base_api_network_client.dart";
import "package:sal/src/api_clients/network/api_network_client_configuration.dart";
import "package:sal/src/models/goal_models/goal_model.dart";
import "package:sal/src/requests/delete_request.dart";
import "package:sal/src/requests/empty_request.dart";
import "package:sal/src/requests/goal/get_status_request.dart";
import "package:sal/src/responses/empty_response.dart";
import "package:sal/src/responses/goal/goal_get_response.dart";
import "package:sal/src/responses/response_wrapper.dart";

class GoalApiNetworkClient extends BaseApiNetworkClient implements GoalApiClient {
  GoalApiNetworkClient(ApiNetworkClientConfiguration configuration) : super(configuration);

  @override
  Future<ResponseWrapper<GoalGetResponse>> get({required EmptyRequest? request, required String accessToken}) async {
    return makeRequest<int, ResponseWrapper<GoalGetResponse>>("GET", "Goal", null, null,     
      (json) => ResponseWrapper<GoalGetResponse>.fromJson(json, (json) => GoalGetResponse.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<GoalModel>> add({required GoalModel? request, required String accessToken}) async {
    return makeRequest<GoalModel, ResponseWrapper<GoalModel>>("PUT", "Goal", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<GoalModel>.fromJson(json, (json) => GoalModel.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<GoalModel>> update({required GoalModel? request, required String accessToken}) async {
    return makeRequest<GoalModel, ResponseWrapper<GoalModel>>("PATCH", "Goal", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<GoalModel>.fromJson(json, (json) => GoalModel.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<EmptyResponse>> delete({required DeleteRequest? request, required String accessToken}) async {
		final queryParameters = <MapEntry<String, String?>>[]
      ..add(MapEntry("Id", request?.id.toString()));
    return makeRequest<int, ResponseWrapper<EmptyResponse>>("DELETE", buildQueryAddress("Goal", queryParameters), null, null,     
      (json) => ResponseWrapper<EmptyResponse>.fromJson(json, (json) => EmptyResponse.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<GoalModel>> changeStatus({required GetStatusRequest? request, required String accessToken}) async {
    return makeRequest<GetStatusRequest, ResponseWrapper<GoalModel>>("POST", "Goal/ChangeStatus", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<GoalModel>.fromJson(json, (json) => GoalModel.fromJson(json)), accessToken);
    }
}
