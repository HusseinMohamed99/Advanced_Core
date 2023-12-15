import 'package:advanced_core/Core/theming/color_manager.dart';
import 'package:advanced_core/Core/theming/font_manager.dart';
import 'package:flutter/material.dart';

class StyleManager {
  static TextStyle font21BlueBold = TextStyle(
    fontSize: FontSize.s21,
    fontWeight: FontWeightManager.bold700,
    fontFamily: FontConstant.fontFamily,
    color: ColorManager.darkBlueColor,
  );
  static TextStyle font16WhiteBold = TextStyle(
    fontSize: FontSize.s16,
    fontWeight: FontWeightManager.bold700,
    fontFamily: FontConstant.fontFamily,
    color: ColorManager.whiteColor,
  );
  static TextStyle font16BlackBold = TextStyle(
    fontSize: FontSize.s16,
    fontWeight: FontWeightManager.bold700,
    fontFamily: FontConstant.fontFamily,
    color: ColorManager.blackColor,
  );
  static TextStyle font16MainColorBold = TextStyle(
    fontSize: FontSize.s16,
    fontWeight: FontWeightManager.bold700,
    fontFamily: FontConstant.fontFamily,
    color: ColorManager.mainColor,
  );
  static TextStyle font16BlackRegular = TextStyle(
    fontSize: FontSize.s16,
    fontWeight: FontWeightManager.regular400,
    fontFamily: FontConstant.fontFamily,
    color: ColorManager.blackColor,
  );
  static TextStyle font12GrayRegular = TextStyle(
    fontSize: FontSize.s12,
    fontWeight: FontWeightManager.regular400,
    fontFamily: FontConstant.fontFamily,
    color: ColorManager.grayColor,
    height: 1.6,
  );
  static TextStyle font12BlackBold = TextStyle(
    fontSize: FontSize.s12,
    fontWeight: FontWeightManager.bold700,
    fontFamily: FontConstant.fontFamily,
    color: ColorManager.blackColor,
  );
  static TextStyle font20BlueBold = TextStyle(
    fontSize: FontSize.s20,
    fontWeight: FontWeightManager.bold700,
    fontFamily: FontConstant.fontFamily,
    color: ColorManager.semiDarkBlueColor,
  );
  static TextStyle font15BlackMedium = TextStyle(
    fontSize: FontSize.s15,
    fontWeight: FontWeightManager.medium500,
    fontFamily: FontConstant.fontFamily,
    color: ColorManager.blackColor,
  );
  static TextStyle font13LighterGrayRegular = TextStyle(
    fontSize: FontSize.s13,
    fontWeight: FontWeightManager.regular400,
    fontFamily: FontConstant.fontFamily,
    color: ColorManager.lighterGrayColor,
  );
  static TextStyle font20WhiteRegular = TextStyle(
    fontSize: FontSize.s20,
    fontWeight: FontWeightManager.regular400,
    fontFamily: FontConstant.fontFamily,
    color: ColorManager.whiteColor,
  );
  static TextStyle font20WhiteBold = TextStyle(
    fontSize: FontSize.s20,
    fontWeight: FontWeightManager.bold700,
    fontFamily: FontConstant.fontFamily,
    color: ColorManager.whiteColor,
  );
  static TextStyle font14WhiteRegular = TextStyle(
    fontSize: FontSize.s14,
    fontWeight: FontWeightManager.regular400,
    fontFamily: FontConstant.fontFamily,
    color: ColorManager.whiteColor.withOpacity(0.71),
  );
  static TextStyle font14GrayRegular = TextStyle(
    fontSize: FontSize.s14,
    fontWeight: FontWeightManager.regular400,
    fontFamily: FontConstant.fontFamily,
    color: ColorManager.grayColor,
  );
  static TextStyle font18SemiBlackRegular = TextStyle(
    fontSize: FontSize.s14,
    fontWeight: FontWeightManager.regular400,
    fontFamily: FontConstant.fontFamily,
    color: ColorManager.semiBlackColor,
  );
}
