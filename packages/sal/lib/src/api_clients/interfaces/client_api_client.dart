import "package:sal/src/models/client_models/client_model.dart";
import "package:sal/src/requests/empty_request.dart";
import "package:sal/src/responses/client/client_get_response.dart";
import "package:sal/src/responses/response_wrapper.dart";

abstract class ClientApiClient {
  Future<ResponseWrapper<ClientGetResponse>> get({required EmptyRequest? request, required String accessToken});

  Future<ResponseWrapper<ClientModel>> add({required ClientModel? request, required String accessToken});

  Future<ResponseWrapper<ClientModel>> update({required ClientModel? request, required String accessToken});
}
