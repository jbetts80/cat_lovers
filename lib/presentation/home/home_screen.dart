import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:cataas/domain/blocs/home/home_bloc.dart';
import 'package:cataas/presentation/home/widgets/cat_gif.dart';
import 'package:cataas/presentation/home/widgets/cat_print_background.dart';
import 'package:cataas/presentation/home/widgets/load_cat_gif_button.dart';
import 'package:cataas/presentation/home/widgets/quotes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => GetIt.I.get(),
      child: Column(
        children: [
          const Expanded(child: CatGif()),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue.withOpacity(0.1),
              child: Stack(
                children: const [
                  CatPrintBackground(),
                  Quotes(),
                  LoadCatGifButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
