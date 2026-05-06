import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';
import 'package:medicine_app/core/resources/width_manager.dart';
import 'package:medicine_app/view/login_page/widget/login_button.dart';
import 'package:medicine_app/view/login_page/widget/login_form.dart';
import 'package:medicine_app/view/login_page/widget/login_header.dart';
import 'package:medicine_app/view/login_page/widget/success_dialog.dart';
import 'package:medicine_app/view/sign_in/screen/sign_in_page.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: WidthManagers.w20,
            vertical: HeightManager.h20,
          ),
          child: Column(
            children: [
              SizedBox(height: HeightManager.h80),

              const LoginHeader(),

              SizedBox(height: HeightManager.h40),

              const LoginForm(),

              SizedBox(height: HeightManager.h30),

              LoginButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => const SuccessDialog(),
                  );
                },
              ),

              SizedBox(height: HeightManager.h20),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SignInPage(),
                    ),
                  );
                },
                child: const Text(Utils.signIn),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
