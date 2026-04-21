import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/fonts_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/radius_manager.dart';
import 'package:medicine_app/core/resources/route_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';

class CreatePasswordButton extends StatelessWidget {
  const CreatePasswordButton({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => InkWell(
        onTap: () {
          if (_formKey.currentState!.validate()) {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.success,
              animType: AnimType.scale,
              dialogBackgroundColor: Colors.white,
              title: Utils.success,
              titleTextStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: ColorManager.primary,
              ),
              desc: Utils.youHaveSuccessfullyResetYourPassword,
              descTextStyle: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
              btnOkText: Utils.login,
              btnOkColor: ColorManager.primary,
              dismissOnTouchOutside: false,
              btnOkOnPress: () {
                Navigator.pushNamed(context, RoutesName.login.routeName);
              },
            ).show();
          }
        },
        child: Container(
          height: HeightManager.h55,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorManager.primary,
            borderRadius: BorderRadius.circular(RadiusValuesManager.r20),
          ),
          child: Center(
            child: Text(
              Utils.createPassword,
              style: TextStyle(
                color: ColorManager.white,
                fontSize: FontSizeManagers.f16,
                fontWeight: FontWeight.w600,
                fontFamily: FontsManagers.interMedium,
              ),
            ),
          ),
        ),
      ),
    );
  }
}





