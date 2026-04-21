import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/assets_values_manager.dart';
import 'package:medicine_app/core/resources/utils.dart' ;
import 'package:medicine_app/model/main_components_model.dart';
import 'package:medicine_app/model/popular_products_model.dart';
import 'package:medicine_app/model/product_on_sale_model.dart';

class ConstValueManager{
  ConstValueManager._();
  static List<MainComponentsModel> listAllCategories = [
    MainComponentsModel(title: Utils.scan, icon: Icons.document_scanner_rounded ),
    MainComponentsModel(title: Utils.nearby, icon: Icons.place_outlined,),
    MainComponentsModel(title: Utils.donates, icon: Icons.favorite_border,),
    MainComponentsModel(title: Utils.efforts, icon: Icons.star_border,),
    MainComponentsModel(title: Utils.doctors, icon: Icons.medical_services,),
  ];
  /////////////////////////////////
  static List<PopularProductsModel> listPopularProductSales = [
    PopularProductsModel(medicineImage: AssetsValuesManager.panadolImage, medicineName: Utils.panadol, medicinePieces: Utils.x20pcs, medicinePrice: Utils.$15x99),
    PopularProductsModel(medicineImage: AssetsValuesManager.bodrexHerbalImage, medicineName: Utils.bodrexHerbal, medicinePieces: Utils.x100pcs, medicinePrice: Utils.$7x99),
    PopularProductsModel(medicineImage: AssetsValuesManager.konidenImage, medicineName: Utils.konidin, medicinePieces: Utils.x3pcs, medicinePrice: Utils.$5x99)
  ];
  /////////////////////////////////////
  static List<ProductOnSaleModel> listProductsOnSale = [
    ProductOnSaleModel(medicineImage: AssetsValuesManager.obhCombi, medicineName: Utils.oBHCombi, medicinePieces: Utils.x20pcs, medicinePrice: Utils.$15x99, olderPrice: Utils.$10x99Before),
    ProductOnSaleModel(medicineImage: AssetsValuesManager.bodrexHerbalImage, medicineName: Utils.bodrexHerbal, medicinePieces: Utils.x100pcs, medicinePrice: Utils.$7x99, olderPrice: Utils.$8x99Before),
    ProductOnSaleModel(medicineImage: AssetsValuesManager.konidenImage, medicineName: Utils.konidin, medicinePieces: Utils.x3pcs, medicinePrice: Utils.$5x99, olderPrice: Utils.$7x99Before)
  ];


}