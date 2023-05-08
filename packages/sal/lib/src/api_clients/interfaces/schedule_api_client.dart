import "package:sal/src/models/schedule_models/schedule_model.dart";
import "package:sal/src/requests/delete_request.dart";
import "package:sal/src/requests/get_request.dart";
import "package:sal/src/responses/empty_response.dart";
import "package:sal/src/responses/response_wrapper.dart";
import "package:sal/src/responses/schedule/schedule_get_response.dart";

abstract class ScheduleApiClient {
  Future<ResponseWrapper<ScheduleGetResponse>> get({required GetRequest? request, required String accessToken});

  Future<ResponseWrapper<ScheduleModel>> add({required ScheduleModel? request, required String accessToken});

  Future<ResponseWrapper<ScheduleModel>> update({required ScheduleModel? request, required String accessToken});

  Future<ResponseWrapper<EmptyResponse>> delete({required DeleteRequest? request, required String accessToken});
}
