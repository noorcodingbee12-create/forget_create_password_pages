import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/assets_values_manager.dart';
import 'package:medicine_app/core/resources/color_manager.dart';
import 'package:medicine_app/core/resources/height_manager.dart';
import 'package:medicine_app/core/resources/utils.dart';
import 'package:medicine_app/core/resources/width_manager.dart';
import 'package:medicine_app/core/widget/doctor_details.dart';
import 'package:medicine_app/view/doctor_consultation/widget/app_divider.dart';
import 'package:medicine_app/view/doctor_consultation/widget/appointment_app_bar.dart';
import 'package:medicine_app/view/doctor_consultation/widget/appointment_bottom_bar.dart';
import 'package:medicine_app/view/doctor_consultation/widget/info_tile.dart';
import 'package:medicine_app/view/doctor_consultation/widget/payment_method_card.dart';
import 'package:medicine_app/view/doctor_consultation/widget/payment_row.dart';
import 'package:medicine_app/view/doctor_consultation/widget/payment_success_dialog.dart';
import 'package:medicine_app/view/doctor_consultation/widget/section_header.dart';


class AppointmentPage extends StatelessWidget {
  const AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: const AppointmentAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: WidthManagers.w24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: HeightManager.h10),

             DoctorDetailsCard(
              image: AssetsValuesManager.marcus,
              doctorName: Utils.doctorMarcus,
              doctorAddress: Utils.doctorCardiologist,
            ),

            SizedBox(height: HeightManager.h24),

            SectionHeader(title: Utils.date, showChange: true, onChangeTap: () {}),
            SizedBox(height: HeightManager.h12),
             InfoTile(
              icon: Icons.calendar_today_outlined,
              text: Utils.wednesday,
            ),
            SizedBox(height: HeightManager.h20),
            const AppDivider(),
            SizedBox(height: HeightManager.h20),

            // ----- Reason -----
            SectionHeader(
              title: Utils.reason,
              showChange: true,
              onChangeTap: () {},
            ),
            SizedBox(height: HeightManager.h12),
             InfoTile(icon: Icons.edit_outlined, text: Utils.chestPain),
            SizedBox(height: HeightManager.h20),
            const AppDivider(),
            SizedBox(height: HeightManager.h20),

            // ----- Payment Detail -----
             SectionHeader(title: Utils.paymentDetail),
            SizedBox(height: HeightManager.h14),
             PaymentRow(label: Utils.consultation, value: Utils.$60_00),
            SizedBox(height: HeightManager.h12),
             PaymentRow(label: Utils.adminFee, value: Utils.$01_00),
            SizedBox(height: HeightManager.h12),
             PaymentRow(label: Utils.additionalDiscount, value: '-'),
            SizedBox(height: HeightManager.h14),
            PaymentRow(label: Utils.total, value: Utils.$61_00, isTotal: true),

            SizedBox(height: HeightManager.h24),

            // ----- Payment Method -----
            SectionHeader(title: Utils.paymentMethod),
            SizedBox(height: HeightManager.h12),
            PaymentMethodCard(onChangeTap: () {}),

            SizedBox(height: HeightManager.h20),
          ],
        ),
      ),
      bottomNavigationBar: AppointmentBottomBar(
        total: Utils.$61_00,
        onBookingTap: () => _onBookingTap(context),
      ),
    );
  }
}

void _onBookingTap(BuildContext context) {
  PaymentSuccessDialog.show(
    context,
    onChatDoctorTap: () {
      Navigator.of(context).pop(); // قفل الـ dialog
    },
  );
}