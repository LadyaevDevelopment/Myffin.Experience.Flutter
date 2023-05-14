import 'package:myffin_experience_flutter/di/dependencies.dart';
import 'package:myffin_experience_flutter/domain/entities/access_control/policy_document.dart';
import 'package:myffin_experience_flutter/domain/repositories/misc/get_policy_documents_data.dart';
import 'package:myffin_experience_flutter/domain/repositories/misc/misc_repository.dart';
import 'package:myffin_experience_flutter/domain/utils/common_error.dart';
import 'package:myffin_experience_flutter/domain/utils/unary_result.dart';
import 'package:myffin_experience_flutter/domain/utils/no_specific_error.dart';
import 'package:sal/sal.dart';

class MiscRemoteRepository extends MiscRepository {
  final apiClient = resolveDependency<MiscApiClient>();

  @override
  Future<UnaryResult<GetPolicyDocumentsData, NoSpecificError>> getPolicyDocuments() async {
    try {
      final response = await apiClient.getPolicyDocuments(accessToken: "");
      if (response.operationStatus == OperationStatus.success) {
        final documents =
            response.responseData!.documents.map((item) => PolicyDocument(title: item.title, url: item.url)).toList();
        return success(GetPolicyDocumentsData(documents: documents));
      }
      switch (response.operationStatus) {
        case OperationStatus.success:
          final documents =
              response.responseData!.documents.map((item) => PolicyDocument(title: item.title, url: item.url)).toList();
          return success(GetPolicyDocumentsData(documents: documents));
        case OperationStatus.forbidden:
          return commonError(const CommonError(type: CommonErrorType.ExpiredSessionError));
        default:
          return commonError(const CommonError(type: CommonErrorType.ExternalError));
      }
    } catch (error) {
      return commonError(const CommonError(type: CommonErrorType.UnknownError));
    }
  }
}
