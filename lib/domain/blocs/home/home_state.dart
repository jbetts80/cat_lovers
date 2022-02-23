part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    String? catImage,
    @Default(false) isLoading,
  }) = _HomeState;
  factory HomeState.initial() => const _HomeState();
}
