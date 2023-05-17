import 'package:assigment/carousel_view.dart';
import 'package:assigment/language_view.dart';
import 'package:flutter/material.dart';

class BodyView extends StatefulWidget {
  const BodyView({Key? key}) : super(key: key);

  @override
  State<BodyView> createState() => _BodyViewState();
}

class _BodyViewState extends State<BodyView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselView(),
        SizedBox(
          height: 20,
        ),
        LanguageView(),
      ],
    );
  }
}
