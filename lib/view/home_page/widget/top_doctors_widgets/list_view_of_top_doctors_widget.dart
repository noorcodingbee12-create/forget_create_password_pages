import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/const_values_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/padding_manager.dart';
import 'package:medicine_app/core/resources/width_manager.dart';
import 'package:medicine_app/view/home_page/widget/top_doctors_widgets/list_view_design_of_top_doctors.dart';

class ListViewOfTopDoctorsWidget extends StatelessWidget {
  const ListViewOfTopDoctorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightManager.h230,
      child: ListView.separated(
        padding:  EdgeInsetsGeometry.symmetric(
          horizontal: HorizontalPaddingManager.p20,

        ),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: ConstValueManager.listTopDoctors.length,
        separatorBuilder: (context, index) => SizedBox(width: WidthManagers.w20),
        itemBuilder: (context, index) {
          return ListViewDesignOfTopDoctors(
            model: ConstValueManager.listTopDoctors[index],
          );
        },
      ),
    );
  }
}