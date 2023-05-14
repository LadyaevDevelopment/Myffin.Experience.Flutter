class CommonError {
  final CommonErrorType type;
  final String? errorMessage;

  const CommonError({required this.type, this.errorMessage});
}

enum CommonErrorType { UnknownError, ExternalError, ExpiredSessionError }
