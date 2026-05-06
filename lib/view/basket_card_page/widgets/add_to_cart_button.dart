import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/fonts_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/radius_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';


class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.primary,
          padding: EdgeInsets.symmetric(vertical: HeightManager.h10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiusValuesManager.r12),
          ),
        ),
        onPressed: () {},
        child: Text(
          Utils.addAllToCart,
          style: TextStyle(fontSize: FontSizeManagers.f16),
        ),
      ),
    );
  }
}