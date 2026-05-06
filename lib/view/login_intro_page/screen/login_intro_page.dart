import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/utils.dart';
import 'package:medicine_app/core/resources/route_manager.dart';
import 'package:medicine_app/core/resources/padding_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/view/login_intro_page/widget/intro_texts.dart';
import 'package:medicine_app/view/login_intro_page/widget/logo_widget.dart';
import 'package:medicine_app/view/login_intro_page/widget/outline_button.dart';
import 'package:medicine_app/view/login_intro_page/widget/primary_button.dart';

class LoginIntroPage extends StatelessWidget {
  const LoginIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: PaddingManager.p30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LogoWidget(),

            SizedBox(height: HeightManager.h30),

            const IntroTexts(),

            SizedBox(height: HeightManager.h40),

            PrimaryButton(
              text: Utils.login,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RoutesName.login.routeName,
                );
              },
            ),

            SizedBox(height: HeightManager.h15),

            OutlineButtonWidget(
              text: Utils.signUp,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RoutesName.signUp.routeName,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}