// ignore_for_file: prefer_inlined_adds
// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/api_clients/interfaces/misc_api_client.dart";
import "package:sal/src/api_clients/network/base_api_network_client.dart";
import "package:sal/src/api_clients/network/api_network_client_configuration.dart";
import "package:sal/src/responses/misc/get_policy_documents_response.dart";
import "package:sal/src/responses/response_wrapper.dart";

class MiscApiNetworkClient extends BaseApiNetworkClient implements MiscApiClient {
  MiscApiNetworkClient(ApiNetworkClientConfiguration configuration) : super(configuration);

  @override
  Future<ResponseWrapper<GetPolicyDocumentsResponse>> getPolicyDocuments({required String? accessToken}) async {
    return makeRequest<int, ResponseWrapper<GetPolicyDocumentsResponse>>("GET", "Misc/PolicyDocuments", null, null,     
      (json) => ResponseWrapper<GetPolicyDocumentsResponse>.fromJson(json, (json) => GetPolicyDocumentsResponse.fromJson(json)), accessToken);
    }
}
