import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/assets_values_manager.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/padding_manager.dart';
import 'package:medicine_app/core/resources/radius_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';
import 'package:medicine_app/view/location_page/widget/container_logo_and_address_section.dart';
import 'package:medicine_app/view/location_page/widget/title_of_nearest_pharmacy.dart';
import 'package:medicine_app/view/widget/app_bar_widget.dart';
import 'package:medicine_app/view/widget/main_button_design.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBarWidget(title: Utils.nearestPharmacy),
      body: Container(
        alignment: Alignment.bottomCenter,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsValuesManager.locationImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: HorizontalPaddingManager.p20,
            vertical: VerticalPaddingManager.p50,
          ),
          child: Container(
            height: HeightManager.h171,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorManager.overWhite,
              borderRadius: BorderRadius.circular(RadiusValuesManager.r12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                TitleOfNearestPharmacy(),

                Divider(thickness: 1, color: ColorManager.semiLightGray),

                // Location Row
                ContainerLogoAndAddressSection(),

                InkWell(
                  onTap: () {
                    //todo check location page or order
                  },
                  child: MainButtonDesign(
                    width: double.infinity,
                    text: Utils.confirmLocation,
                    height: HeightManager.h45,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}