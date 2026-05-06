import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/assets_values_manager.dart';
import 'package:medicine_app/core/resources/width_manager.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsValuesManager.logo,
      width: WidthManagers.w220,
    );
  }
}