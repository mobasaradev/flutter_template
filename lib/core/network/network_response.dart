class NetworkResponse<T> {
  final T data;
  final int statusCode;

  NetworkResponse({required this.data, required this.statusCode});
}
