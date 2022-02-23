import 'package:cataas/domain/repositories/cats_repository.dart';
import 'package:injectable/injectable.dart';

abstract class HomeUseCase {
  Future<String> fetchCatGif();
}

@Injectable(as: HomeUseCase)
class HomeUseCaseImpl implements HomeUseCase {
  HomeUseCaseImpl(this._catsRepo);
  final CatsRepository _catsRepo;

  @override
  Future<String> fetchCatGif() async => await _catsRepo.fetchCatGif();
}
