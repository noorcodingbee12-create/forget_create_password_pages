import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';
import 'package:medicine_app/view/basket_card_page/widgets/add_to_cart_button.dart';
import 'package:medicine_app/view/basket_card_page/widgets/medicine_header_icon.dart';
import 'package:medicine_app/view/basket_card_page/widgets/medicine_list.dart';


class MedicineScreen extends StatelessWidget {
  const MedicineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        elevation: 0,
        title: Text(
          Utils.medicineName,
          style: TextStyle(color: ColorManager.black),
        ),
        iconTheme: IconThemeData(color: ColorManager.black),
      ),
      body:  Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            MedicineHeaderIcon(),
            SizedBox(height:HeightManager.h20),
            Expanded(child: MedicineList()),
            AddToCartButton(),
          ],
        ),
      ),
    );
  }
}