import "package:sal/src/responses/misc/get_policy_documents_response.dart";
import "package:sal/src/responses/response_wrapper.dart";

abstract class MiscApiClient {
  Future<ResponseWrapper<GetPolicyDocumentsResponse>> getPolicyDocuments({required String? accessToken});
}
