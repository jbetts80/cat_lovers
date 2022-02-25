import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CatPrintBackground extends StatelessWidget {
  const CatPrintBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Create a file to save constants
    return Opacity(
      opacity: 0.3,
      child: ColorFiltered(
        colorFilter: const ColorFilter.mode(
          Colors.deepOrange,
          BlendMode.srcATop,
        ),
        child: SvgPicture.asset('assets/svg/cat_print.svg'),
      ),
    );
  }
}
