import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';
import 'package:medicine_app/core/resources/width_manager.dart';
import 'package:medicine_app/view/sign_in/widgets/sign_in_button.dart';
import 'package:medicine_app/view/sign_in/widgets/sign_in_form.dart';
import 'package:medicine_app/view/sign_in/widgets/sign_in_header.dart';
import 'package:medicine_app/view/sign_in/widgets/sign_in_success_dialog.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Utils.signUp)),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: WidthManagers.w20,
          vertical: HeightManager.h20,
        ),
        child: Column(
          children: [
            SizedBox(height: HeightManager.h30),

            const SignInHeader(),

            SizedBox(height: HeightManager.h30),

            const SignInForm(),

            SizedBox(height: HeightManager.h30),

            SignInButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => const SignInSuccessDialog(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}