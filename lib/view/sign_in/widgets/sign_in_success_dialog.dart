import 'package:flutter/material.dart';
import 'package:medicine_app/core/navigation/app_navigation.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/fonts_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/radius_manager.dart';
import 'package:medicine_app/core/resources/route_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';
import 'package:medicine_app/core/resources/width_manager.dart';

class SignInSuccessDialog extends StatelessWidget {
  const SignInSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(  RadiusValuesManager.r12),
      ),
      child: SizedBox(
        height: HeightManager.h300,
        width: WidthManagers.w300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline,
              size: FontSizeManagers.f100,
              color: ColorManager.green,
            ),
            Text(
              Utils.success,
              style: TextStyle(fontSize: FontSizeManagers.f20),
            ),
            Text(Utils.successMessage),
            Text(Utils.registered),
            ElevatedButton(
              onPressed: () {
                AppNavigation.pushNamed(
                  context,
                  RoutesName.login,
                );
              },
              child: Text(Utils.login),
            ),
          ],
        ),
      ),
    );
  }
}