class NetworkResponse<T> {
  NetworkResponse({required this.data, required this.statusCode, this.headers});

  final T data;
  final int statusCode;
  final Map<String, String>? headers;
}
