import 'dart:typed_data';

abstract class CatsRepository {
  Future<Uint8List> fetchCatGif();
}
