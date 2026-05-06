import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/fonts_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/radius_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';
import 'package:medicine_app/view/create_new_password_page/widget/success_dialog.dart' show SuccessDialog;

class CreatePasswordButton extends StatelessWidget {
  const CreatePasswordButton({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (_formKey.currentState!.validate()) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => const SuccessDialog(),
          );
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
    );
  }
}