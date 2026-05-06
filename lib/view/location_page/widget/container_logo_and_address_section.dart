import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/padding_manager.dart';
import 'package:medicine_app/core/resources/width_manager.dart';
import 'package:medicine_app/view/location_page/widget/address_of_pharmacy_text.dart';
import 'package:medicine_app/view/location_page/widget/container_of_icon.dart';

class ContainerLogoAndAddressSection extends StatelessWidget {
  const ContainerLogoAndAddressSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: HorizontalPaddingManager.p16,
        vertical: VerticalPaddingManager.p10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Icon
          ContainerOfIcon(),

          SizedBox(width: WidthManagers.w13),

          // Address
          AddressOfPharmacyText(),
        ],
      ),
    );
  }
}