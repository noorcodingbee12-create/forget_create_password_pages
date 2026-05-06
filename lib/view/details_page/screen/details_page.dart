import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/padding_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';
import 'package:medicine_app/model/popular_products_model.dart';
import 'package:medicine_app/model/product_on_sale_model.dart';
import 'package:medicine_app/view/details_page/widget/button_nav_bar_widget.dart';
import 'package:medicine_app/view/details_page/widget/description_of_medicine.dart';
import 'package:medicine_app/view/details_page/widget/medicien_name_title.dart';
import 'package:medicine_app/view/details_page/widget/medicine_image.dart';
import 'package:medicine_app/view/details_page/widget/medicine_ml_and_favorite.dart';
import 'package:medicine_app/view/details_page/widget/price_of_medicine_and_counter.dart';
import 'package:medicine_app/view/details_page/widget/rate_of_medicine.dart';
import 'package:medicine_app/view/widget/app_bar_widget.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? image;
    String? name;
    String? medicinePrice;
    String? medicinePieces;
    double? rating;
    String? description;
    var model = ModalRoute.of(context)?.settings.arguments;
    ////////
    if ( model is PopularProductsModel){
      image = model.medicineImage;
      name = model.medicineName;
      medicinePrice = model.medicinePrice;
      medicinePieces = model.medicinePieces;
      rating = model.rating;
      description = model.des;
    } else if(model is ProductOnSaleModel){
      image = model.medicineImage;
      name = model.medicineName;
      medicinePrice = model.medicinePrice;
      medicinePieces = model.medicinePieces;
      rating = model.rating;
      description = model.des;
    }else{
      //image is null
      image = null;
    }
    if (image ==null ) {
      return Scaffold(body: Center(child: Text("Not found any product")));
    } else {
      /////////
      //////////
      return Scaffold(
        bottomNavigationBar: ButtonNavBarWidget(),
        backgroundColor: ColorManager.white,
        appBar: AppBarWidget(title: Utils.details),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: HorizontalPaddingManager.p20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MedicineImage(image: image),
              SizedBox(height: HeightManager.h10),
              MedicineNameTitle(medicineName: name!),
              SizedBox(height: HeightManager.h10),
              MedicineMlAndFavorite(mlMedicine: medicinePieces!,),
              SizedBox(height: HeightManager.h15),
              RateOfMedicine(
                initialRating:rating!,
                onRatingUpdate: (double value) {},
              ),
              SizedBox(height: HeightManager.h20),
              PriceOfMedicineAndCounter(priceMedicine: medicinePrice!,),
              SizedBox(height: HeightManager.h20),
              DescriptionOfMedicine(desc: description!),
            ],
          ),
        ),
      );
    }
  }
}