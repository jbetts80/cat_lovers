import 'dart:developer';

import 'package:dio/dio.dart';

import 'package:cataas/data/endpoints.dart';
import 'package:cataas/domain/repositories/cats_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CatsRepository)
class CatsRepositoryImpl implements CatsRepository {
  @override
  Future<String> fetchCatGif() async {
    // TODO Refactor
    final response = Dio(
      BaseOptions(
        baseUrl: Endpoints.baseUrl,
        headers: {'Content-Type': 'application/json', 'Accept-Language': 'en'},
        connectTimeout: 5000,
        receiveTimeout: 3000,
      ),
    );
    // TODO: Change the response
    // Uint8List
    return 'Image loaded';
  }
}
