import 'package:advanced_core/Core/helpers/utils/spacing.dart';
import 'package:advanced_core/Core/theming/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.image, required this.title, this.padding});
  final String image;
  final String title;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      width: double.infinity,
      child: Padding(
        padding: padding ?? EdgeInsets.symmetric(horizontal: 51.w),
        child: Row(
          children: [
            Image.asset(image),
            horizontalSpacing(19),
            Text(
              title,
              style: StyleManager.font16WhiteBold,
            ),
          ],
        ),
      ),
    );
  }
}
