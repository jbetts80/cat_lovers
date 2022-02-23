// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cataas/data/repositories/cats_repository_impl.dart' as _i4;
import 'package:cataas/domain/blocs/home/home_bloc.dart' as _i6;
import 'package:cataas/domain/repositories/cats_repository.dart' as _i3;
import 'package:cataas/domain/use_cases/home_use_case.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.CatsRepository>(() => _i4.CatsRepositoryImpl());
  gh.factory<_i5.HomeUseCase>(
      () => _i5.HomeUseCaseImpl(get<_i3.CatsRepository>()));
  gh.factory<_i6.HomeBloc>(() => _i6.HomeBloc(get<_i5.HomeUseCase>()));
  return get;
}
