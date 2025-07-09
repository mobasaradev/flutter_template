import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_template/core/network/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

final _logger = Logger();

class NetworkHandler {
  final http.Client _client;

  NetworkHandler({http.Client? client}) : _client = client ?? http.Client();

  Future<Either<ApiException, T>> get<T>({
    required Uri uri,
    required T Function(dynamic json) parser,
    Map<String, String>? headers,
  }) async {
    try {
      _logger.d('GET: $uri');
      final response = await _client.get(uri, headers: headers);
      return _handleResponse(response, parser);
    } catch (e) {
      _logger.e('GET error: $e');
      return Left(NetworkFailure(e.toString()));
    }
  }

  Future<Either<ApiException, T>> post<T>({
    required Uri uri,
    required Map<String, dynamic> body,
    required T Function(dynamic json) parser,
    Map<String, String>? headers,
  }) async {
    try {
      _logger.d('POST: $uri');
      _logger.d('Body: $body');

      final response = await _client.post(
        uri,
        headers: headers ?? {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );

      return _handleResponse(response, parser);
    } catch (e) {
      _logger.e('POST error: $e');
      return Left(NetworkFailure(e.toString()));
    }
  }

  Either<ApiException, T> _handleResponse<T>(
    http.Response response,
    T Function(dynamic json) parser,
  ) {
    _logger.d('Response Status Code: ${response.statusCode}');
    _logger.d('Response Body: ${response.body}');

    final statusCode = response.statusCode;
    final body = response.body;
    dynamic decoded;

    String errorMessage = 'An unexpected error occurred.';

    try {
      decoded = jsonDecode(body);
      if (decoded is Map && decoded.containsKey('message')) {
        errorMessage = decoded['message'];
      } else if (decoded is Map && decoded.containsKey('error')) {
        errorMessage = decoded['error'];
      } else if (body.isNotEmpty) {
        errorMessage = body;
      }
    } catch (e) {
      errorMessage = body.isNotEmpty ? body : 'Failed to parse error response.';
    }

    switch (statusCode) {
      case 200:
      case 201:
      case 202:
      case 204:
        try {
          final parsed = parser(jsonDecode(body));
          return Right(parsed);
        } catch (e) {
          _logger.e('Parsing error: $e');
          return Left(
            UnknownFailure('Failed to parse response.', statusCode: statusCode),
          );
        }

      case 400:
        return Left(BadRequestFailure(errorMessage, statusCode: statusCode));
      case 401:
        return Left(UnauthorizedFailure(errorMessage));
      case 403:
        return Left(ServerFailure(errorMessage, statusCode: statusCode));
      case 404:
        return Left(NotFoundFailure(errorMessage));
      case 409:
        return Left(ConflictFailure(errorMessage));
      case 500:
        return Left(InternalServerFailure(errorMessage));
      case 502:
      case 503:
      case 504:
        return Left(ServerFailure(errorMessage, statusCode: statusCode));
      default:
        return Left(UnknownFailure(errorMessage, statusCode: statusCode));
    }
  }
}
