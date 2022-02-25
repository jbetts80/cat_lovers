import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.success(T data) = _Success<T>;
  const factory ApiResponse.failure({
    required int? statusCode,
    required String message,
  }) = _Failure<T>;
}
