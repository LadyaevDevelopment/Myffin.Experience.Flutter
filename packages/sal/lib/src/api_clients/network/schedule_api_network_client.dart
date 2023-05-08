// ignore_for_file: prefer_inlined_adds
// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/api_clients/interfaces/schedule_api_client.dart";
import "package:sal/src/api_clients/network/base_api_network_client.dart";
import "package:sal/src/api_clients/network/api_network_client_configuration.dart";
import "package:sal/src/models/schedule_models/schedule_model.dart";
import "package:sal/src/requests/delete_request.dart";
import "package:sal/src/requests/get_request.dart";
import "package:sal/src/responses/empty_response.dart";
import "package:sal/src/responses/response_wrapper.dart";
import "package:sal/src/responses/schedule/schedule_get_response.dart";

class ScheduleApiNetworkClient extends BaseApiNetworkClient implements ScheduleApiClient {
  ScheduleApiNetworkClient(ApiNetworkClientConfiguration configuration) : super(configuration);

  @override
  Future<ResponseWrapper<ScheduleGetResponse>> get({required GetRequest? request, required String accessToken}) async {
		final queryParameters = <MapEntry<String, String?>>[]
      ..add(MapEntry("Date", request?.date.toIso8601String()));
    return makeRequest<int, ResponseWrapper<ScheduleGetResponse>>("GET", buildQueryAddress("Schedule", queryParameters), null, null,     
      (json) => ResponseWrapper<ScheduleGetResponse>.fromJson(json, (json) => ScheduleGetResponse.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<ScheduleModel>> add({required ScheduleModel? request, required String accessToken}) async {
    return makeRequest<ScheduleModel, ResponseWrapper<ScheduleModel>>("PUT", "Schedule", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<ScheduleModel>.fromJson(json, (json) => ScheduleModel.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<ScheduleModel>> update({required ScheduleModel? request, required String accessToken}) async {
    return makeRequest<ScheduleModel, ResponseWrapper<ScheduleModel>>("PATCH", "Schedule", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<ScheduleModel>.fromJson(json, (json) => ScheduleModel.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<EmptyResponse>> delete({required DeleteRequest? request, required String accessToken}) async {
		final queryParameters = <MapEntry<String, String?>>[]
      ..add(MapEntry("Id", request?.id.toString()));
    return makeRequest<int, ResponseWrapper<EmptyResponse>>("DELETE", buildQueryAddress("Schedule", queryParameters), null, null,     
      (json) => ResponseWrapper<EmptyResponse>.fromJson(json, (json) => EmptyResponse.fromJson(json)), accessToken);
    }
}
