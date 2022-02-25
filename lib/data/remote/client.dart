import 'dart:io';

import 'package:dio/dio.dart';

import 'package:cataas/data/remote/api_request.dart';
import 'package:cataas/data/remote/api_response.dart';
import 'package:cataas/data/remote/endpoints.dart';

class Client {
  Client._();
  static final Client _instance = Client._();
  static Client get instance => _instance;

  final dio = Dio(
    BaseOptions(
      baseUrl: Endpoints.baseUrl,
      headers: Endpoints.gifHeaders,
      connectTimeout: 5000,
      receiveTimeout: 5000,
    ),
  );

  static Future<ApiResponse<T>> request<T>(ApiRequest request) async {
    try {
      final response = await _instance.dio.request(
        request.url,
        data: request.body,
        queryParameters: request.query,
        options: Options(
          method: request.method,
          headers: Endpoints.gifHeaders,
          responseType: request.responseType,
        ),
      );
      return ApiResponse.success(response.data);
    } on DioError catch (exception) {
      return ApiResponse.failure(
        statusCode: exception.response?.statusCode,
        message: exception.message,
      );
    } on SocketException catch (_) {
      return const ApiResponse.failure(
        statusCode: 500,
        message: 'Error connecting to the server',
      );
    } on Exception catch (exception) {
      return ApiResponse.failure(
        statusCode: 500,
        message: exception.toString(),
      );
    }
  }
}
