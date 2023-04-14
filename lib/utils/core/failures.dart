abstract class Failure {
  final String message;
  final int? statusCode;

  const Failure(this.message, this.statusCode);
}

class ServerFailure extends Failure {
  const ServerFailure({
    required String errorMessage,
    int? statusCode,
  }) : super(
          errorMessage,
          statusCode,
        );
}

class ConnectionFailure extends Failure {
  const ConnectionFailure(
    String message,
    int? statusCode,
  ) : super(message, statusCode);
}

class CacheFailure extends Failure {
  const CacheFailure({
    required String message,
    int? statusCode,
  }) : super(message, statusCode);
}
