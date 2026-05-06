import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/fonts_manager.dart';

class MedicineNameTitle extends StatelessWidget {
  const MedicineNameTitle({
    super.key, required this.medicineName,
  });
  final String medicineName;

  @override
  Widget build(BuildContext context) {
    return Text(
      medicineName,
      style: TextStyle(
        color: ColorManager.black,
        fontWeight: FontWeight.bold,
        fontSize: FontSizeManagers.f24,
      ),
    );
  }
}