import 'package:myffin_experience_flutter/di/dependencies.dart';
import 'package:myffin_experience_flutter/domain/repositories/misc/get_policy_documents_data.dart';
import 'package:myffin_experience_flutter/domain/repositories/misc/misc_repository.dart';
import 'package:myffin_experience_flutter/domain/utils/no_specific_error.dart';
import 'package:myffin_experience_flutter/domain/utils/unary_result.dart';

class GetPolicyDocumentsUseCase {
  Future<UnaryResult<GetPolicyDocumentsData, NoSpecificError>> getPolicyDocuments() {
    final repository = resolveDependency<MiscRepository>();
    return repository.getPolicyDocuments();
  }
}
