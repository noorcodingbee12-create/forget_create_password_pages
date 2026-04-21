import 'package:flutter/material.dart';
import 'package:medicine_app/core/widget/unknown_route_page.dart';
import 'package:medicine_app/view/cart_page/screen/my_cart_page.dart';
import 'package:medicine_app/view/choose_page/screen/choose_page.dart';
import 'package:medicine_app/view/create_new_password_page/screen/create_new_password_page.dart';
import 'package:medicine_app/view/forget_password_page/screen/forget_password_page.dart';
import 'package:medicine_app/view/home_page/screen/home_page.dart';
import 'package:medicine_app/view/login_page/screen/login_page.dart';
import 'package:medicine_app/view/on_boarding_page/screen/on_boarding_page.dart';
import 'package:medicine_app/view/scan_page/screen/scan_qr_page.dart';
import 'package:medicine_app/view/sing_up_page/screen/sign_up_page.dart';
import 'package:medicine_app/view/splash_page/screen/splash_page.dart';
import 'package:medicine_app/view/verified_forget_password_page/screen/verified_forget_password_page.dart';

class RoutesManager {
  RoutesManager._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget page;

    if (settings.name == RoutesName.splash.routeName) {
      page = const SplashPage();
    } else if (settings.name == RoutesName.onboarding.routeName) {
      page = const OnBoardingPage();
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
    }  else if (settings.name == RoutesName.choose.routeName) {
      page = const ChoosePage();
    } else if (settings.name == RoutesName.home.routeName) {
      page = const HomePage();
    } else if (settings.name == RoutesName.scan.routeName) {
      page = const ScanQrPage();
    } else if (settings.name == RoutesName.cart.routeName) {
      page = const MyCartPage();
    } else {
      page = const UnknownRoutePage();
    }

    return MaterialPageRoute(builder: (context) => page, settings: settings);
  }
}

enum RoutesName {
  splash("/"),
  onboarding("/onboardingPage"),
  login("/loginPage"),
  signUp("/signUpPage"),
  createNewPassword("/createPasswordNewPage"),
  forgetPassword("/forgetPasswordPage"),
  verifiedForgetPassword("/verifiedForgetPasswordPage"),
  home("/homePage"),
  topDoctor("/topDoctorPage"),
  scan("/scanQrPage"),
  cart("/myCartPage"),
  findDoctor("/findDoctorPage"),
  doctorDetails("/doctorDetailsPage"),
  bookingDoctor("/bookingDoctorPage"),
  schedule("/schedulePage"),
  pharmacyDashboard("/pharmacyDashboardPage"),
  medicine("/medicinePage"),
  myCart("/MyCartPage"),
  choose("/choosePage"),
  details("/detailsPage"),
  location("/locationPage"),
  profile("/profile");

  final String routeName;
  const RoutesName(this.routeName);
}

/////////////
// class RoutesNames {
//   RoutesNames._();
//
//   static const String choosePage = "/";
//   static const String loadingPage = "/loadingPage";
//   static const String splash = "/splash";
//   static const String loginUsers = "/loginUsers";
//   static const String homeUserPage = "/homeUserPage";
//   static const String homePharmacyPage = "/homePharmacyPage";
//   static const String loginPharmacyPage = "/loginPharmacyPage";
//   static const String signupUserPage = "/signupUserPage";
//   static const String forgetPassword = "/forgetPassword";
//   static const String verifiedForgetPassword = "/verifiedForgetPassword";
//   static const String categories = "/categories";
//   static const String medicineDate = "/medisineDate";
//   static const String scan = "/scan";
//   static const String productsPage = "/productsPage";
//   static const String nearestPharmacy = "/nearestPharmacy";
//   static const String cartPage = "/cartPage";
//   static const String donateMedicinePage = "/DonateMedicinePage";
//   static const String rewardsDonation = "/rewardsDonation";
//   static const String addMedicinePharmacy = "/addMedicine";
//   static const String viewOrdersPharmacy = "/viewOrdersPharmacy";
//   static const String medicineInventoryPage = "/medicineInventoryPage";
//   static const String donationPharmacyPage = "/donationPharmacyPage";
//   static const String checkOutPage = "/checkOutPage";
//   static const String verifiedCheckOutPage = "/verifiedCheckOutPage";
// }