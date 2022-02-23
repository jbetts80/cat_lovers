import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cataas/domain/use_cases/home_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._homeUseCase) : super(HomeState.initial()) {
    on<_ImageLoaded>(_loadImage);
  }
  final HomeUseCase _homeUseCase;

  FutureOr<void> _loadImage(_ImageLoaded event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final catImage = await _homeUseCase.fetchCatGif();
      emit(state.copyWith(isLoading: false, catImage: catImage));
    } on Exception catch (exception) {
      emit(state.copyWith(isLoading: false));
      log(exception.toString());
    }
  }
}
