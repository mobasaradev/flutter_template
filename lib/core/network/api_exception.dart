abstract class ApiException {
  final String message;
  final int? statusCode;

  ApiException(this.message, {this.statusCode});

  @override
  String toString() => 'Failure: $message (Code: $statusCode)';
}

class ServerFailure extends ApiException {
  ServerFailure(super.message, {super.statusCode});
}

class NetworkFailure extends ApiException {
  NetworkFailure(super.message);
}

class UnauthorizedFailure extends ApiException {
  UnauthorizedFailure(super.message) : super(statusCode: 401);
}

class BadRequestFailure extends ApiException {
  BadRequestFailure(super.message, {super.statusCode});
}

class NotFoundFailure extends ApiException {
  NotFoundFailure(super.message) : super(statusCode: 404);
}

class ConflictFailure extends ApiException {
  ConflictFailure(super.message) : super(statusCode: 409);
}

class InternalServerFailure extends ApiException {
  InternalServerFailure(super.message) : super(statusCode: 500);
}

class UnknownFailure extends ApiException {
  UnknownFailure(super.message, {super.statusCode});
}
