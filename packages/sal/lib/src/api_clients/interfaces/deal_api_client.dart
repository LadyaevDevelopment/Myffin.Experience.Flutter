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

abstract class DealApiClient {
  Future<ResponseWrapper<DealGetResponse>> get({required GetRequest? request, required String accessToken});

  Future<ResponseWrapper<DealCategoryGetResponse>> categories({required EmptyRequest? request, required String accessToken});

  Future<ResponseWrapper<DealModel>> add({required DealModel? request, required String accessToken});

  Future<ResponseWrapper<DealModel>> update({required DealModel? request, required String accessToken});

  Future<ResponseWrapper<EmptyResponse>> delete({required DeleteRequest? request, required String accessToken});

  Future<ResponseWrapper<EmptyResponse>> close({required CloseRequest? request, required String accessToken});

  Future<ResponseWrapper<DailyInformationModel>> dailyInformation({required DailyInformationRequest? request, required String accessToken});
}
