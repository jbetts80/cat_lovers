import 'package:cataas/presentation/home/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:cataas/data/config/injector.dart';
import 'package:cataas/presentation/home/home_screen.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Cataas App'),
          ),
          body: const HomeScreen(),
        ),
      ),
    );
  }
}
