import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/assets_values_manager.dart';


class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(AssetsValuesManager.logo),
    );
  }
}