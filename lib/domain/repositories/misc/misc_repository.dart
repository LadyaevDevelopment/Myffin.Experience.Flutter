import 'package:myffin_experience_flutter/domain/repositories/misc/get_policy_documents_data.dart';
import 'package:myffin_experience_flutter/domain/utils/no_specific_error.dart';
import 'package:myffin_experience_flutter/domain/utils/unary_result.dart';

abstract class MiscRepository {
  Future<UnaryResult<GetPolicyDocumentsData, NoSpecificError>> getPolicyDocuments();
}
