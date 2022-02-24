import 'dart:typed_data';

import 'package:injectable/injectable.dart';

import 'package:cataas/data/remote/api_request.dart';
import 'package:cataas/data/remote/api_response.dart';
import 'package:cataas/data/remote/client.dart';
import 'package:cataas/data/remote/endpoints.dart';
import 'package:cataas/domain/services/cats_api.dart';

@Injectable(as: CatsApi)
class CatsApiImpl implements CatsApi {
  @override
  Future<ApiResponse<Uint8List>> fetchCatGif() async =>
      Client.request<Uint8List>(
        ApiRequest(
          url: Endpoints.gifs,
          method: ApiRequest.getMethod,
        ),
      );
}
