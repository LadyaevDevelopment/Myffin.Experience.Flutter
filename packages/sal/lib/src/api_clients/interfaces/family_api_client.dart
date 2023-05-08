import "package:sal/src/models/family_models/family_create_model.dart";
import "package:sal/src/models/family_models/family_model.dart";
import "package:sal/src/requests/delete_request.dart";
import "package:sal/src/requests/empty_request.dart";
import "package:sal/src/responses/empty_response.dart";
import "package:sal/src/responses/family/family_roles_response.dart";
import "package:sal/src/responses/response_wrapper.dart";

abstract class FamilyApiClient {
  Future<ResponseWrapper<FamilyModel>> get({required EmptyRequest? request, required String accessToken});

  Future<ResponseWrapper<FamilyRolesResponse>> familyRole({required EmptyRequest? request, required String accessToken});

  Future<ResponseWrapper<EmptyResponse>> createFamily({required FamilyCreateModel? request, required String accessToken});

  Future<ResponseWrapper<FamilyModel>> add({required FamilyModel? request, required String accessToken});

  Future<ResponseWrapper<FamilyModel>> update({required FamilyModel? request, required String accessToken});

  Future<ResponseWrapper<EmptyResponse>> delete({required DeleteRequest? request, required String accessToken});
}
