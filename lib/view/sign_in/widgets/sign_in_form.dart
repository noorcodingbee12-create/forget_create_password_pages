import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/radius_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';


class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: Utils.name,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RadiusValuesManager.r12),
            ),
          ),
        ),
        SizedBox(height: HeightManager.h20),

        TextField(
          decoration: InputDecoration(
            hintText: Utils.email,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RadiusValuesManager.r12),
            ),
          ),
        ),
        SizedBox(height: HeightManager.h20),

        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: Utils.password,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RadiusValuesManager.r12),
            ),
          ),
        ),
      ],
    );
  }
}