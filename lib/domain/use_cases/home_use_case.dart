import 'dart:typed_data';

import 'package:injectable/injectable.dart';

import 'package:cataas/domain/repositories/cats_repository.dart';

abstract class HomeUseCase {
  Future<Uint8List> fetchCatGif();
}

@Injectable(as: HomeUseCase)
class HomeUseCaseImpl implements HomeUseCase {
  HomeUseCaseImpl(this._catsRepo);
  final CatsRepository _catsRepo;

  @override
  Future<Uint8List> fetchCatGif() => _catsRepo.fetchCatGif();
}
