import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/fonts_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/padding_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';
import 'package:medicine_app/view/forget_password_page/widget/forget_password_toggle.dart';
import 'package:medicine_app/view/forget_password_page/widget/forget_password_text_field.dart';
import 'package:medicine_app/view/forget_password_page/widget/reset_password_button.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isEmailSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: PaddingManager.p48,
            horizontal: PaddingManager.p24,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Back Icon
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    CupertinoIcons.back,
                    size: 24,
                    color: ColorManager.blackText,
                  ),
                ),

                SizedBox(height: HeightManager.h24),

                /// Title
                Text(
                  Utils.forgetYourPassword,
                  style: TextStyle(
                    color: ColorManager.blackText,
                    fontSize: FontSizeManagers.f24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: HeightManager.h8),

                /// Subtitle
                Text(
                  Utils.messageForForgetPassword,
                  style: TextStyle(
                    color: ColorManager.grey,
                    fontSize: FontSizeManagers.f16,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: HeightManager.h24),

                /// Toggle Email / Phone
                ForgetPasswordToggle(
                  isEmailSelected: _isEmailSelected,
                  onToggle: (value) {
                    setState(() {
                      _isEmailSelected = value;
                    });
                  },
                ),

                SizedBox(height: HeightManager.h20),

                /// TextField
                ForgetPasswordTextField(
                  isEmailSelected: _isEmailSelected,
                ),

                SizedBox(height: HeightManager.h32),

                /// Button
                ResetPasswordButton(formKey: _formKey),

                SizedBox(height: HeightManager.h15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

