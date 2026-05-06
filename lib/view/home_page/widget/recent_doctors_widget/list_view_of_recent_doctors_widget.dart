import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/const_values_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/padding_manager.dart';
import 'package:medicine_app/core/resources/width_manager.dart';
import 'package:medicine_app/view/home_page/widget/recent_doctors_widget/list_view_design_of_recent_doctors.dart';

class ListViewOfRecentDoctorsWidget extends StatelessWidget {
  const ListViewOfRecentDoctorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightManager.h124,
      child: ListView.separated(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: HorizontalPaddingManager.p20,

        ),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: ConstValueManager.listRecentDoctors.length,
        separatorBuilder: (context, index) => SizedBox(width: WidthManagers.w20),
        itemBuilder: (context, index) {
          return ItemRecentDoctor(
            model: ConstValueManager.listRecentDoctors[index],
          );
        },
      ),
    );
  }
}