import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/padding_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';
import 'package:medicine_app/view/home_page/widget/advertisment_of_quick_orders.dart';
import 'package:medicine_app/view/home_page/widget/popular_product_widgets/widget_of_popular_medicines_widget.dart';
import 'package:medicine_app/view/home_page/widget/product_on_sale_widgets/list_view_main_components.dart';
import 'package:medicine_app/view/location_page/widget/app_bar_widget.dart';
import 'package:medicine_app/view/location_page/widget/text_title_of_categories.dart';
import '../widget/text_field_search_homepage_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Utils.home,
        icon: Icons.shopping_cart_rounded,
      ),
      backgroundColor: ColorManager.likeWhiteBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: HorizontalPaddingManager.p10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: HeightManager.h20),
              TextFieldSearchHomePage(),
              SizedBox(height: HeightManager.h20),
              ListViewMainComponents(),
              SizedBox(height: HeightManager.h15),
              AdvertismentOfQuickOrders(),
              SizedBox(height: HeightManager.h10),
              TextTitleOfCategories(title: Utils.popularProduct,),
              SizedBox(height: HeightManager.h15),
              WidgetOfPopularMedicinesWidget(),
              SizedBox(height: HeightManager.h20),
              TextTitleOfCategories(title: Utils.productOnSale,),
            ],
          ),
        ),
      ),
    );
  }
}