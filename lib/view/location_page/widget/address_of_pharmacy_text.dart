import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/fonts_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';

class AddressOfPharmacyText extends StatelessWidget {
  const AddressOfPharmacyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        Utils.locationOfPharmacy,
        style: TextStyle(
            fontSize: FontSizeManagers.f12,
            color: ColorManager.grey,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}