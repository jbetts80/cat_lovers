import 'package:dio/dio.dart';

class ApiRequest {
  ApiRequest({
    required this.url,
    required this.method,
    this.query,
    this.headers,
    this.body,
    this.responseType,
  });

  final String url;
  final String method;
  final Map<String, dynamic>? query;
  final Map<String, dynamic>? headers;
  final dynamic body;
  final ResponseType? responseType;

  static String getMethod = 'GET';
  static String postMethod = 'POST';
  static String putMethod = 'PUT';
  static String patchMethod = 'PATCH';
  static String deleteMethod = 'DELETE';
}
