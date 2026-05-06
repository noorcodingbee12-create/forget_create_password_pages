import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/fonts_manager.dart';

class NormalTitleDesign extends StatelessWidget {
  const NormalTitleDesign({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: ColorManager.black,
        fontWeight: FontWeight.bold,
        fontSize: FontSizeManagers.f20,
      ),
    );
  }
}