import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/width_manager.dart';

class ContainerOfIcon extends StatelessWidget {
  const ContainerOfIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(WidthManagers.w8),
      decoration: BoxDecoration(
        color: ColorManager.semiLightGray,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.location_on,
        color: ColorManager.primary,
        size: WidthManagers.w20,
      ),
    );
  }
}