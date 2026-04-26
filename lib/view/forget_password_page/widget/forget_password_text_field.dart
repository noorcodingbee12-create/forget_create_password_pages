import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/radius_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';
import 'package:medicine_app/core/resources/width_manager.dart';
import 'package:medicine_app/view/forget_password_page/widget/text_form_field_for_gmail.dart';

class ForgetPasswordTextField extends StatelessWidget {
  const ForgetPasswordTextField({
    super.key,
    required this.isEmailSelected,
  });

  final bool isEmailSelected;

  @override
  Widget build(BuildContext context) {
    if (isEmailSelected) {
      return const TextFormFieldForGmail();
    }

    return TextFormField(
      keyboardType: TextInputType.phone,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return Utils.pleaseEnterYourPhoneNumber;
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: Utils.phoneNumber,
        prefixIcon: const Icon(Icons.phone_outlined),
        filled: true,
        fillColor: ColorManager.fillColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusValuesManager.r14),
          borderSide: BorderSide(color: ColorManager.fillColor, width: WidthManagers.w1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusValuesManager.r14),
          borderSide: BorderSide(color: ColorManager.primary, width: WidthManagers.w2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusValuesManager.r14),
          borderSide:  BorderSide(color: Colors.red, width: WidthManagers.w1_5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusValuesManager.r14),
          borderSide:  BorderSide(color: Colors.red, width: WidthManagers.w2),
        ),
        errorStyle: const TextStyle(height: 0),
      ),
    );
  }
}
