import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/fonts_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/padding_manager.dart';
import 'package:medicine_app/core/resources/route_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';
import 'package:medicine_app/view/create_new_password_page/widget/create_password_button.dart';
import 'package:medicine_app/view/create_new_password_page/widget/text_form_field_for_password.dart';

class CreateNewPasswordPage extends StatefulWidget {
  const CreateNewPasswordPage({super.key});

  @override
  State<CreateNewPasswordPage> createState() => _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends State<CreateNewPasswordPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: PaddingManager.p38,
            horizontal: PaddingManager.p24,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Back Icon
                Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesName.login.routeName);
                    },
                    child: Icon(
                      CupertinoIcons.back,
                      size: 24,
                      color: ColorManager.blackText,
                    ),
                  ),
                ),

                SizedBox(height: HeightManager.h24),

                /// Title
                Text(
                  Utils.createNewPassword,
                  style: TextStyle(
                    color: ColorManager.blackText,
                    fontSize: FontSizeManagers.f24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: HeightManager.h8),

                /// Subtitle
                Text(
                  Utils.messageForCreateNewPassword,
                  style: TextStyle(
                    color: ColorManager.grey2,
                    fontSize: FontSizeManagers.f16,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: HeightManager.h24),

                /// PASSWORD
                TextFormFieldForPassword(),
                SizedBox(height: HeightManager.h20),

                TextFormFieldForPassword(
                  isConfirmPassword: true,
                ),

                SizedBox(height: HeightManager.h32),
                /// SIGN IN BUTTON
                CreatePasswordButton(formKey: _formKey),

                SizedBox(height: HeightManager.h15),


                ],
              ),
            ),
          ),
        ),
      );
    }
  }





