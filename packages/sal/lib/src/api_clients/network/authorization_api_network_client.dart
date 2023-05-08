// ignore_for_file: prefer_inlined_adds
// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

import "package:sal/src/api_clients/interfaces/authorization_api_client.dart";
import "package:sal/src/api_clients/network/base_api_network_client.dart";
import "package:sal/src/api_clients/network/api_network_client_configuration.dart";
import "package:sal/src/requests/authorization/one_time_password_request.dart";
import "package:sal/src/requests/authorization/pin_code_request.dart";
import "package:sal/src/requests/authorization/verify_one_time_password_request.dart";
import "package:sal/src/responses/authorization/authorize_response.dart";
import "package:sal/src/responses/authorization/one_time_password_response.dart";
import "package:sal/src/responses/authorization/verify_one_time_password_response.dart";
import "package:sal/src/responses/response_wrapper.dart";

class AuthorizationApiNetworkClient extends BaseApiNetworkClient implements AuthorizationApiClient {
  AuthorizationApiNetworkClient(ApiNetworkClientConfiguration configuration) : super(configuration);

  @override
  Future<ResponseWrapper<OneTimePasswordResponse>> oneTimePassword({required OneTimePasswordRequest? request, required String? accessToken}) async {
    return makeRequest<OneTimePasswordRequest, ResponseWrapper<OneTimePasswordResponse>>("POST", "Authorization/OneTimePassword", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<OneTimePasswordResponse>.fromJson(json, (json) => OneTimePasswordResponse.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<VerifyOneTimePasswordResponse>> verifyOneTimePassword({required VerifyOneTimePasswordRequest? request, required String? accessToken}) async {
    return makeRequest<VerifyOneTimePasswordRequest, ResponseWrapper<VerifyOneTimePasswordResponse>>("POST", "Authorization/VerifyOneTimePassword", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<VerifyOneTimePasswordResponse>.fromJson(json, (json) => VerifyOneTimePasswordResponse.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<AuthorizeResponse>> createPinCode({required PinCodeRequest? request, required String? accessToken}) async {
    return makeRequest<PinCodeRequest, ResponseWrapper<AuthorizeResponse>>("POST", "Authorization/CreatePinCode", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<AuthorizeResponse>.fromJson(json, (json) => AuthorizeResponse.fromJson(json)), accessToken);
    }

  @override
  Future<ResponseWrapper<AuthorizeResponse>> authorize({required PinCodeRequest? request, required String? accessToken}) async {
    return makeRequest<PinCodeRequest, ResponseWrapper<AuthorizeResponse>>("POST", "Authorization/Authorize", request, (request) => request.toJson(),     
      (json) => ResponseWrapper<AuthorizeResponse>.fromJson(json, (json) => AuthorizeResponse.fromJson(json)), accessToken);
    }
}
