import 'package:flutter/material.dart';
import 'package:medicine_app/core/resources/padding_manager.dart';
import 'package:medicine_app/view/on_boarding_page/widget/dots_indicator.dart';
import 'package:medicine_app/view/on_boarding_page/widget/next_button.dart';

class BottomNavigationSection extends StatelessWidget {
  final PageController controller;
  final int count;
  final VoidCallback onNext;

  const BottomNavigationSection({
    super.key,
    required this.controller,
    required this.count,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: PaddingManager.p30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DotsIndicatorWidget(
            controller: controller,
            count: count,
          ),
          NextButton(onTap: onNext),
        ],
      ),
    );
  }
}