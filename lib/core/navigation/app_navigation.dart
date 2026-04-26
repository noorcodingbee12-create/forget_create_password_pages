import 'package:flutter/cupertino.dart';
import 'package:medicine_app/core/resources/route_manager.dart';

class AppNavigation {
  AppNavigation._();

  static Future<Object?> pushNamed(
      BuildContext context, {
        required RoutesName routesName,
        Object? args,
      }) {
    return Navigator.pushNamed(
      context,
      routesName.routeName,
      arguments: args,
    );
  }

  static Future<Object?> pushReplacementNamed(
      BuildContext context, {
        required RoutesName routesName,
        Object? args,
      }) {
    return Navigator.pushReplacementNamed(
      context,
      routesName.routeName,
      arguments: args,
    );
  }

  static Future<Object?> pushAndRemoveUntil(
      BuildContext context, {
        required RoutesName routesName,
        Object? args,
      }) {
    return Navigator.pushNamedAndRemoveUntil(
      context,
      routesName.routeName,
          (route) => false,
      arguments: args,
    );
  }


  static void pop(BuildContext context) {
    Navigator.pop(context);
  }
}