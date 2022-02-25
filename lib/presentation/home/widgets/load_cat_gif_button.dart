import 'package:cataas/presentation/home/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cataas/domain/blocs/home/home_bloc.dart';

class LoadCatGifButton extends StatelessWidget {
  const LoadCatGifButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      heightFactor: 9,
      child: BlocSelector<HomeBloc, HomeState, bool>(
        selector: (state) => state.isLoading,
        builder: (context, isLoading) => TextButton(
          onPressed: () {
            if (!isLoading) {
              context.read<HomeBloc>().add(const HomeEvent.onImageLoaded());
            }
          },
          // TODO: Internationalize texts
          child: const Text(
            'Enjoy a New Cat',
            style: TextStyle(color: AppColors.white),
          ),
          style: TextButton.styleFrom(
            backgroundColor: isLoading ? AppColors.grey : AppColors.orange,
          ),
        ),
      ),
    );
  }
}
