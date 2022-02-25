import 'dart:typed_data';

import 'package:cataas/data/remote/api_response.dart';

abstract class CatsApi {
  Future<ApiResponse<Uint8List>> fetchCatGif();
}
