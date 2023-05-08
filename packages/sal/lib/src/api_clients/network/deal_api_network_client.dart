// ignore_for_file: prefer_inlined_adds
// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/api_clients/interfaces/deal_api_client.dart";
import "package:sal/src/api_clients/network/base_api_network_client.dart";
import "package:sal/src/api_clients/network/api_network_client_configuration.dart";
import "package:sal/src/models/deal_models/daily_information_model.dart";
import "package:sal/src/models/deal_models/deal_model.dart";
import "package:sal/src/requests/deal/close_request.dart";
import "package:sal/src/requests/deal/daily_information_request.dart";
import "package:sal/src/requests/delete_request.dart";
import "package:sal/src/requests/empty_request.dart";
import "package:sal/src/requests/get_request.dart";
import "package:sal/src/responses/deal/deal_category_get_response.dart";
import "package:sal/src/responses/deal/deal_get_response.dart";
import "package:sal/src/responses/empty_response.dart";
import "package:sal/src/responses/response_wrapper.dart";

class DealApiNetworkClient extends BaseApiNetworkClient implements DealApiClient {
  DealApiNetworkClient(ApiNetworkClientConfiguration configuration) : super(configuration);

  @override
  Future<ResponseWrapper<DealGetResponse>> get({required GetRequest? request, required String accessToken}) async {
		final queryParameters = <MapEntry<String, String?>>[]
      ..add(MapEntry("Date", request?.date.toIso8601String()));
    return makeRequest<int, ResponseWrapper<DealGetResponse>>("GET", buildQueryAddress("Deal", queryParameters), null, null,     
      (json) => ResponseWrapper<DealGetResponse>.fromJson(json, (json) => DealGetResponse.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<DealCategoryGetResponse>> categories({required EmptyRequest? request, required String accessToken}) async {
    return makeRequest<int, ResponseWrapper<DealCategoryGetResponse>>("GET", "Deal/Categories", null, null,     
      (json) => ResponseWrapper<DealCategoryGetResponse>.fromJson(json, (json) => DealCategoryGetResponse.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<DealModel>> add({required DealModel? request, required String accessToken}) async {
    return makeRequest<DealModel, ResponseWrapper<DealModel>>("PUT", "Deal", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<DealModel>.fromJson(json, (json) => DealModel.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<DealModel>> update({required DealModel? request, required String accessToken}) async {
    return makeRequest<DealModel, ResponseWrapper<DealModel>>("PATCH", "Deal", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<DealModel>.fromJson(json, (json) => DealModel.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<EmptyResponse>> delete({required DeleteRequest? request, required String accessToken}) async {
		final queryParameters = <MapEntry<String, String?>>[]
      ..add(MapEntry("Id", request?.id.toString()));
    return makeRequest<int, ResponseWrapper<EmptyResponse>>("DELETE", buildQueryAddress("Deal", queryParameters), null, null,     
      (json) => ResponseWrapper<EmptyResponse>.fromJson(json, (json) => EmptyResponse.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<EmptyResponse>> close({required CloseRequest? request, required String accessToken}) async {
    return makeRequest<CloseRequest, ResponseWrapper<EmptyResponse>>("POST", "Deal/Close", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<EmptyResponse>.fromJson(json, (json) => EmptyResponse.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<DailyInformationModel>> dailyInformation({required DailyInformationRequest? request, required String accessToken}) async {
		final queryParameters = <MapEntry<String, String?>>[]
      ..add(MapEntry("Date", request?.date.toIso8601String()));
    return makeRequest<int, ResponseWrapper<DailyInformationModel>>("GET", buildQueryAddress("Deal/DailyInformation", queryParameters), null, null,     
      (json) => ResponseWrapper<DailyInformationModel>.fromJson(json, (json) => DailyInformationModel.fromJson(json)), accessToken);
    }
}
