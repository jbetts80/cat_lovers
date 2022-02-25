import 'package:cataas/presentation/home/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cataas/domain/blocs/home/home_bloc.dart';

class CatGif extends StatelessWidget {
  const CatGif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Stack(
          children: [
            if (state.catImage == null)
              Image.asset('assets/png/background_cat.png'),
            if (state.catImage != null)
              Center(child: Image.memory(state.catImage!)),
            if (state.isLoading)
              const LinearProgressIndicator(
                color: AppColors.white,
                backgroundColor: AppColors.brown,
              ),
          ],
        );
      },
    );
  }
}
