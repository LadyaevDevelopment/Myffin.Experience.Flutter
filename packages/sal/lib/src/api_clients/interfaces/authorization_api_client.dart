import "package:sal/src/requests/authorization/one_time_password_request.dart";
import "package:sal/src/requests/authorization/pin_code_request.dart";
import "package:sal/src/requests/authorization/verify_one_time_password_request.dart";
import "package:sal/src/responses/authorization/authorize_response.dart";
import "package:sal/src/responses/authorization/one_time_password_response.dart";
import "package:sal/src/responses/authorization/verify_one_time_password_response.dart";
import "package:sal/src/responses/response_wrapper.dart";

abstract class AuthorizationApiClient {
  Future<ResponseWrapper<OneTimePasswordResponse>> oneTimePassword({required OneTimePasswordRequest? request, required String? accessToken});

  Future<ResponseWrapper<VerifyOneTimePasswordResponse>> verifyOneTimePassword({required VerifyOneTimePasswordRequest? request, required String? accessToken});

  Future<ResponseWrapper<AuthorizeResponse>> createPinCode({required PinCodeRequest? request, required String? accessToken});

  Future<ResponseWrapper<AuthorizeResponse>> authorize({required PinCodeRequest? request, required String? accessToken});
}
