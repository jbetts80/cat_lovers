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
      child: TextButton(
        onPressed: () =>
            context.read<HomeBloc>().add(const HomeEvent.onImageLoaded()),
        child: const Text(
          // TODO: Internationalize text
          'Enjoy a New Cat',
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          padding: const EdgeInsets.all(12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }
}
