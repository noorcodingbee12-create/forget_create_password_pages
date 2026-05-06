import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/const_values_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/padding_manager.dart';
import 'package:medicine_app/core/resources/width_manager.dart';
import 'package:medicine_app/view/home_page/widget/product_on_sale_widgets/list_view_design_of_products_on_sale.dart';

class ListViewOfProductsOnSaleWidget extends StatelessWidget {
  const ListViewOfProductsOnSaleWidget({
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
        itemCount: ConstValueManager.listProductsOnSale.length,
        separatorBuilder: (context, index) => SizedBox(width: WidthManagers.w20),
        itemBuilder: (context, index) {
          return ListViewDesignOfProductsOnSale(
            model: ConstValueManager.listProductsOnSale[index],
          );
        },
      ),
    );
  }
}