import 'package:flutter/cupertino.dart';
import 'package:medicine_app/core/resources/route_manager.dart';

class MainComponentsModel{
  final String title;
  final IconData? icon;
  final RoutesName route;
  MainComponentsModel({
    required this.title,
    this.icon,
    required this.route
  });
}
