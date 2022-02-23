import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:palette_generator/palette_generator.dart';

import 'package:cataas/domain/blocs/home/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Future<Color> _fetchImagePalette(ImageProvider imageProvider) async {
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(imageProvider);
    return paletteGenerator.dominantColor!.color;
  }

  @override
  Widget build(BuildContext context) {
    print(''
        // _fetchImagePalette(
        //   MemoryImage(base64Decode('')),
        // ),
        );
    return BlocProvider<HomeBloc>(
      create: (context) => GetIt.I.get(),
      child: Column(
        children: [
          Image.network(
            'https://cdn.pixabay.com/photo/2016/08/09/21/54/lake-1581879_960_720.jpg',
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue.withOpacity(0.1),
              child: Stack(
                children: [
                  // TODO: Organize the view by widgets
                  // TODO: Create a file to save constants
                  Opacity(
                    opacity: 0.3,
                    child: ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        Colors.deepOrange,
                        BlendMode.srcATop,
                      ),
                      child: SvgPicture.asset('assets/svg/cat_print.svg'),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 100,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black.withOpacity(0.5),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      padding: EdgeInsets.all(10.r),
                      child: const Text(
                        'Owners of dogs will have noticed that, if you provide them with food and water and shelter and affection, they will think you are God. Whereas owners of cats are compelled to realize that, if you provide them with food and water and affection, they draw the conclusion that they are God.',
                        style: TextStyle(
                          height: 1.3,
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const _LoadCatGifButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LoadCatGifButton extends StatelessWidget {
  const _LoadCatGifButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      heightFactor: 9,
      child: TextButton(
        // TODO: Implement the button action
        // TODO: Update both colors with a theme
        onPressed: () {
          print('Loading cat');
          context.read<HomeBloc>().add(
                const HomeEvent.onImageLoaded(),
              );
        },
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
