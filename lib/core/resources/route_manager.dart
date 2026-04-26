import 'package:flutter/material.dart';
import 'package:medicine_app/core/widget/unknown_route_page.dart';
import 'package:medicine_app/view/cart_page/screen/my_cart_page.dart';
import 'package:medicine_app/view/choose_page/screen/choose_page.dart';
import 'package:medicine_app/view/create_new_password_page/screen/create_new_password_page.dart';
import 'package:medicine_app/view/doctor_consultation/screen/appointment_page.dart';
import 'package:medicine_app/view/doctor_consultation/screen/doctor_details_page.dart';
import 'package:medicine_app/view/doctor_consultation/screen/find_doctor_page.dart';
import 'package:medicine_app/view/forget_password_page/screen/forget_password_page.dart';
import 'package:medicine_app/view/home_page/screen/home_page.dart';
import 'package:medicine_app/view/login_page/screen/login_page.dart';
import 'package:medicine_app/view/on_boarding_page/screen/on_boarding_page.dart';
import 'package:medicine_app/view/pharmacy_dashboard/screen/pharmacy_dashboard_page.dart';
import 'package:medicine_app/view/scan_page/screen/scan_qr_page.dart';
import 'package:medicine_app/view/sing_up_page/screen/sign_up_page.dart';
import 'package:medicine_app/view/splash_page/screen/splash_page.dart';
import 'package:medicine_app/view/verified_forget_password_page/screen/verified_forget_password_page.dart';
import 'package:medicine_app/view/welcome_page/screen/welcome_page.dart';

class RoutesManager {
  RoutesManager._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget page;

    if (settings.name == RoutesName.splash.routeName) {
      page = const SplashPage();
    } else if (settings.name == RoutesName.onBoarding.routeName) {
      page = const OnBoardingPage();
    } else if (settings.name == RoutesName.welcome.routeName) {
      page = const WelcomePage();
    } else if (settings.name == RoutesName.login.routeName) {
      page = const LoginPage();
    } else if (settings.name == RoutesName.signUp.routeName) {
      page = const SignUpPage();
    } else if (settings.name == RoutesName.forgetPassword.routeName) {
      page = const ForgetPasswordPage();
    } else if (settings.name == RoutesName.verifiedForgetPassword.routeName) {
      page = const VerifiedForgetPasswordPage();
    } else if (settings.name == RoutesName.createNewPassword.routeName) {
      page = const CreateNewPasswordPage();
    } else if (settings.name == RoutesName.choose.routeName) {
      page = const ChoosePage();
    } else if (settings.name == RoutesName.home.routeName) {
      page = const HomePage();
    } else if (settings.name == RoutesName.findDoctor.routeName) {
      page = FindDoctorPage();
    } else if (settings.name == RoutesName.doctorDetails.routeName) {
      page = DoctorDetailsPage();
    } else if (settings.name == RoutesName.appointment.routeName) {
      page = AppointmentPage();
    } else if (settings.name == RoutesName.pharmacyDashboard.routeName) {
      page = const PharmacyDashboardPage();
    } else if (settings.name == RoutesName.scan.routeName) {
      page = const ScanQrPage();
    } else if (settings.name == RoutesName.cart.routeName) {
      page = const MyCartPage();
    } else {
      page = const UnknownRoutePage();
    }

    return MaterialPageRoute(
      builder: (context) => page,
      settings: settings,
    );
  }
}

enum RoutesName {
  splash("/"),
  onBoarding("/onboardingPage"),
  welcome("/welcomePage"),
  login("/loginPage"),
  signUp("/signUpPage"),
  createNewPassword("/createPasswordNewPage"),
  forgetPassword("/forgetPasswordPage"),
  verifiedForgetPassword("/verifiedForgetPasswordPage"),
  choose("/choosePage"),
  home("/homePage"),

  // Doctor
  findDoctor("/findDoctorPage"),
  doctorDetails("/doctorDetailsPage"),
  appointment("/appointmentPage"),

  // Pharmacy
  pharmacyDashboard("/pharmacyDashboardPage"),
  scan("/scanQrPage"),

  // Cart
  cart("/cartPage");

  final String routeName;
  const RoutesName(this.routeName);
}