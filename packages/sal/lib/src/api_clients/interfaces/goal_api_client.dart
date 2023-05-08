import "package:sal/src/models/goal_models/goal_model.dart";
import "package:sal/src/requests/delete_request.dart";
import "package:sal/src/requests/empty_request.dart";
import "package:sal/src/requests/goal/get_status_request.dart";
import "package:sal/src/responses/empty_response.dart";
import "package:sal/src/responses/goal/goal_get_response.dart";
import "package:sal/src/responses/response_wrapper.dart";

abstract class GoalApiClient {
  Future<ResponseWrapper<GoalGetResponse>> get({required EmptyRequest? request, required String accessToken});

  Future<ResponseWrapper<GoalModel>> add({required GoalModel? request, required String accessToken});

  Future<ResponseWrapper<GoalModel>> update({required GoalModel? request, required String accessToken});

  Future<ResponseWrapper<EmptyResponse>> delete({required DeleteRequest? request, required String accessToken});

  Future<ResponseWrapper<GoalModel>> changeStatus({required GetStatusRequest? request, required String accessToken});
}
