import 'package:flutter/material.dart';
import 'package:flutter_aethe_web/pages/main_page/bodys/input_body.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              const MainPageInputBody(),
              _whatIsAetheBody(context),
            ],
          )
        ],
      ),
    );
  }

  Widget _whatIsAetheBody(BuildContext context) => Container(
        color: Theme.of(context).colorScheme.primary,
        height: 60.w,
        width: 100.w,
      );
}
