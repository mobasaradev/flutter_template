import 'dart:convert';
import 'package:http/http.dart' as http;
import 'api_exception.dart';
import 'network_response.dart';

class NetworkHandler {
  final http.Client client;

  NetworkHandler({http.Client? client}) : client = client ?? http.Client();

  Future<NetworkResponse<T>> get<T>(
    Uri url, {
    Map<String, String>? headers,
    required T Function(dynamic json) parser,
  }) async {
    final response = await client.get(url, headers: headers);
    return _handleResponse<T>(response, parser);
  }

  Future<NetworkResponse<T>> post<T>(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    required T Function(dynamic json) parser,
  }) async {
    final response = await client.post(
      url,
      headers: headers ?? {'Content-Type': 'application/json'},
      body: json.encode(body),
    );
    return _handleResponse<T>(response, parser);
  }

  NetworkResponse<T> _handleResponse<T>(
    http.Response response,
    T Function(dynamic json) parser,
  ) {
    final statusCode = response.statusCode;
    final decoded = jsonDecode(response.body);

    if (statusCode >= 200 && statusCode < 300) {
      return NetworkResponse(data: parser(decoded), statusCode: statusCode);
    } else {
      final message = decoded is Map && decoded['message'] != null
          ? decoded['message']
          : 'Something went wrong';
      throw ApiException(message, statusCode: statusCode);
    }
  }
}
