import 'package:myffin_experience_flutter/domain/utils/common_error.dart';

class UnaryResult<TSuccess, TSpecificError> {
  final TSuccess? success;
  final TSpecificError? specificError;
  final CommonError? commonError;

  UnaryResult._({this.success, this.specificError, this.commonError});
}

UnaryResult<TSuccess, TSpecificError> success<TSuccess, TSpecificError>(TSuccess success) {
  return UnaryResult<TSuccess, TSpecificError>._(success: success);
}

UnaryResult<TSuccess, TSpecificError> specificError<TSuccess, TSpecificError>(TSpecificError specificError) {
  return UnaryResult<TSuccess, TSpecificError>._(specificError: specificError);
}

UnaryResult<TSuccess, TSpecificError> commonError<TSuccess, TSpecificError>(CommonError commonError) {
  return UnaryResult<TSuccess, TSpecificError>._(commonError: commonError);
}
