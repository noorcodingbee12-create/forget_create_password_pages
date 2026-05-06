import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/assets_values_manager.dart';
import 'package:medicine_app/core/resources/fonts_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';


class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Utils.login,
          style: TextStyle(
            fontSize: FontSizeManagers.f28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: HeightManager.h30),
        Image.asset(AssetsValuesManager.logo),
        SizedBox(height: HeightManager.h30),
      ],
    );
  }
}