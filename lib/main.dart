import 'package:flutter/material.dart';
import 'package:flutter_aethe_web/pages/main_page/main_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aethe',
        theme: ThemeData(
            colorScheme:
                ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
          primary: const Color(0xFF0F1013),
        )),
        home: const MainPage(),
      );
    });
  }
}
