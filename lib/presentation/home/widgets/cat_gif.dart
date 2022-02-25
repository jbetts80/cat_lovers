import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cataas/domain/blocs/home/home_bloc.dart';

class CatGif extends StatelessWidget {
  const CatGif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, Uint8List?>(
      selector: (state) => state.catImage,
      builder: (context, image) {
        if (image == null) return const SizedBox.shrink();
        return Image.memory(image);
      },
    );
  }
}
