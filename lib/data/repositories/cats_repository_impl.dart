import 'dart:typed_data';

import 'package:injectable/injectable.dart';

import 'package:cataas/domain/models/api_error.dart';
import 'package:cataas/domain/repositories/cats_repository.dart';
import 'package:cataas/domain/services/cats_api.dart';

@Injectable(as: CatsRepository)
class CatsRepositoryImpl implements CatsRepository {
  CatsRepositoryImpl(this._catsApi);
  final CatsApi _catsApi;

  @override
  Future<Uint8List> fetchCatGif() async {
    final response = await _catsApi.fetchCatGif();
    return response.when(
      success: (catGif) => catGif,
      failure: (statusCode, message) => throw FetchError(statusCode, message),
    );
  }
}
