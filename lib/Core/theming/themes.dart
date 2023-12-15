import 'package:advanced_core/Core/helpers/enum/enum.dart';
import 'package:advanced_core/Core/helpers/utils/value_manager.dart';
import 'package:advanced_core/Core/theming/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final getApplicationTheme = {
  AppTheme.lightTheme: ThemeData(
    // scaffoldBackgroundColor: ColorManager.scaffoldBackgroundLightColor,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    // iconTheme: const IconThemeData(color: ColorManager.darkBlue),
    // colorScheme: const ColorScheme(
    //   brightness: Brightness.light,
    //   primary: ColorManager.whiteColor,
    //   onPrimary: Colors.transparent,
    //   secondary: Colors.transparent,
    //   onSecondary: ColorManager.darkBlue,
    //   error: ColorManager.errorColor,
    //   onError: ColorManager.errorColor,
    //   background: Colors.transparent,
    //   onBackground: Colors.transparent,
    //   surface: Colors.transparent,
    //   onSurface: Colors.transparent,
    //   primaryContainer: ColorManager.inputsFillLight,
    //   onPrimaryContainer: ColorManager.disabledFields,
    // ),

    //Cards Theme
    // cardTheme: CardTheme(
    //   color: ColorManager.white,
    //   shadowColor: ColorManager.grey,
    //   elevation: AppSize.s4,
    // ),

    //AppBar Theme
    // appBarTheme: AppBarTheme(
    //     backgroundColor: ColorManager.primaryColor,
    //     centerTitle: true,
    //     elevation: AppSize.s0,
    //     shadowColor: ColorManager.lightGrey,
    //     titleTextStyle: getRegularStyle(
    //       color: ColorManager.black,
    //       fontSize: FontSize.s16,
    //     )),

    //Button Theme
    // buttonTheme: ButtonThemeData(
    //     shape: const StadiumBorder(),
    //     disabledColor: ColorManager.grey,
    //     buttonColor: ColorManager.primaryColor,
    //     splashColor: ColorManager.lightPrimary),

    //Elevated Button Theme
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //     style: ElevatedButton.styleFrom(
    //         textStyle: getRegularStyle(
    //           color: ColorManager.white,
    //           fontSize: FontSize.s17,
    //         ),
    //         backgroundColor: ColorManager.primaryColor,
    //         shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(AppSize.s12)))),

    //Text Theme
    // textTheme: TextTheme(
    //   displayLarge: StyleManager.headlineLarge32.copyWith(
    //     color: ColorManager.darkBlue,
    //   ),
    //   displayMedium: StyleManager.headlineMedium24.copyWith(
    //     color: ColorManager.darkBlue,
    //   ),
    //   displaySmall: StyleManager.titleLarge20.copyWith(
    //     color: ColorManager.darkBlue,
    //   ),
    //   headlineLarge: StyleManager.textStyleSemiBold18.copyWith(
    //     color: ColorManager.darkBlue,
    //   ),
    //   headlineMedium: StyleManager.textStyle18.copyWith(
    //     color: ColorManager.darkBlue,
    //   ),
    //   headlineSmall: StyleManager.headlineSmall16.copyWith(
    //     color: ColorManager.darkBlue,
    //   ),
    //   titleLarge: StyleManager.textStyleBold16.copyWith(
    //     color: ColorManager.darkBlue,
    //   ),
    //   titleMedium: StyleManager.buttonTextMedium16.copyWith(
    //     color: ColorManager.darkBlue,
    //   ),
    //   titleSmall: StyleManager.bodyTextMedium14.copyWith(
    //     color: ColorManager.darkBlue,
    //   ),
    //   bodyLarge: StyleManager.inputText16.copyWith(
    //     color: ColorManager.darkBlue,
    //   ),
    //   bodyMedium: StyleManager.bodyText14.copyWith(
    //     color: ColorManager.darkBlue,
    //   ),
    //   bodySmall: StyleManager.smallBodyText12.copyWith(
    //     color: ColorManager.darkBlue,
    //   ),
    //   labelLarge: StyleManager.bodyTextMedium14.copyWith(
    //     color: ColorManager.darkBlue,
    //   ),
    //   labelMedium: StyleManager.smallBodyTextSemiBold12.copyWith(
    //     color: ColorManager.darkBlue,
    //   ),
    //   labelSmall: StyleManager.extraSmallBodyText10.copyWith(
    //     color: ColorManager.darkBlue,
    //   ),
    // ),

    // dialogTheme: DialogTheme(
    //     backgroundColor: ColorManager.white,
    //     titleTextStyle:
    //         getBoldStyle(color: ColorManager.black, fontSize: FontSize.s18),
    //     shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(AppSize.s16)),
    //     contentTextStyle: getRegularStyle(color: ColorManager.black),
    //     alignment: Alignment.center),

    //Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      // fillColor: ColorManager.inputFieldsText,
      contentPadding: const EdgeInsetsDirectional.only(
        top: AppPadding.p16,
        bottom: AppPadding.p16,
        start: AppPadding.p24,
      ),
      // hintStyle: StyleManager.inputText16.copyWith(
      //   color: ColorManager.tertiaryText,
      // ),
      // labelStyle: StyleManager.inputText16,
      // errorMaxLines: 2,
      // errorStyle: StyleManager.bodyTextMedium14.copyWith(
      //   color: ColorManager.errorColor,
      // ),
      // prefixIconColor: ColorManager.tertiaryText,
      // suffixIconColor: ColorManager.darkBlue,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          AppSize.s20,
        ),
        borderSide: const BorderSide(
          // color: ColorManager.inputFieldsText,
          width: AppSize.s1_5,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          AppSize.s20,
        ),
        borderSide: const BorderSide(
          // color: ColorManager.inputFieldsText,
          width: AppSize.s1_5,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.greenColor,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s20,
          ),
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          // color: ColorManager.errorColor,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s20,
          ),
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          // color: ColorManager.errorColor,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s20,
          ),
        ),
      ),
    ),
  ),
  AppTheme.darkTheme: ThemeData(
    // scaffoldBackgroundColor: ColorManager.scaffoldBackgroundDarkColor,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    // colorScheme: const ColorScheme(
    //   brightness: Brightness.dark,
    //   secondary: Colors.transparent,
    //   onSecondary: ColorManager.whiteColor,
    //   error: ColorManager.errorColor,
    //   onError: ColorManager.errorColor,
    //   background: Colors.transparent,
    //   onBackground: Colors.transparent,
    //   surface: Colors.transparent,
    //   onSurface: Colors.transparent,
    //   primary: ColorManager.darkBlue,
    //   onPrimary: Colors.transparent,
    //   primaryContainer: ColorManager.inputsFillDark,
    //   onPrimaryContainer: ColorManager.inputsFillDark,
    // ),
    // iconTheme: const IconThemeData(
    //   color: ColorManager.whiteColor,
    // ),

    //Cards Theme
    // cardTheme: CardTheme(
    //   color: ColorManager.white,
    //   shadowColor: ColorManager.grey,
    //   elevation: AppSize.s4,
    // ),

    //AppBar Theme
    // appBarTheme: AppBarTheme(
    //     backgroundColor: ColorManager.primaryColor,
    //     centerTitle: true,
    //     elevation: AppSize.s0,
    //     shadowColor: ColorManager.lightGrey,
    //     titleTextStyle: getRegularStyle(
    //       color: ColorManager.black,
    //       fontSize: FontSize.s16,
    //     )),

    //Button Theme
    // buttonTheme: ButtonThemeData(
    //     shape: const StadiumBorder(),
    //     disabledColor: ColorManager.grey,
    //     buttonColor: ColorManager.primaryColor,
    //     splashColor: ColorManager.lightPrimary),

    // //Elevated Button Theme
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //     style: ElevatedButton.styleFrom(
    //         textStyle: getRegularStyle(
    //           color: ColorManager.white,
    //           fontSize: FontSize.s17,
    //         ),
    //         backgroundColor: ColorManager.primaryColor,
    //         shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(AppSize.s12)))),

    //Text Theme
    // textTheme: TextTheme(
    //   displayLarge: StyleManager.headlineLarge32.copyWith(
    //     color: ColorManager.whiteColor,
    //   ),
    //   displayMedium: StyleManager.headlineMedium24.copyWith(
    //     color: ColorManager.whiteColor,
    //   ),
    //   displaySmall: StyleManager.titleLarge20.copyWith(
    //     color: ColorManager.whiteColor,
    //   ),
    //   headlineLarge: StyleManager.textStyleSemiBold18.copyWith(
    //     color: ColorManager.whiteColor,
    //   ),
    //   headlineMedium: StyleManager.textStyle18.copyWith(
    //     color: ColorManager.whiteColor,
    //   ),
    //   headlineSmall: StyleManager.headlineSmall16.copyWith(
    //     color: ColorManager.whiteColor,
    //   ),
    //   titleLarge: StyleManager.textStyleBold16.copyWith(
    //     color: ColorManager.whiteColor,
    //   ),
    //   titleMedium: StyleManager.buttonTextMedium16.copyWith(
    //     color: ColorManager.whiteColor,
    //   ),
    //   titleSmall: StyleManager.bodyTextMedium14.copyWith(
    //     color: ColorManager.whiteColor,
    //   ),
    //   bodyLarge: StyleManager.inputText16.copyWith(
    //     color: ColorManager.whiteColor,
    //   ),
    //   bodyMedium: StyleManager.bodyText14.copyWith(
    //     color: ColorManager.whiteColor,
    //   ),
    //   bodySmall: StyleManager.smallBodyText12.copyWith(
    //     color: ColorManager.whiteColor,
    //   ),
    //   labelLarge: StyleManager.bodyTextMedium14.copyWith(
    //     color: ColorManager.whiteColor,
    //   ),
    //   labelMedium: StyleManager.smallBodyTextSemiBold12.copyWith(
    //     color: ColorManager.whiteColor,
    //   ),
    //   labelSmall: StyleManager.extraSmallBodyText10.copyWith(
    //     color: ColorManager.whiteColor,
    //   ),
    // ),

    // dialogTheme: DialogTheme(
    //     backgroundColor: ColorManager.white,
    //     titleTextStyle:
    //         getBoldStyle(color: ColorManager.black, fontSize: FontSize.s18),
    //     shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(AppSize.s16)),
    //     contentTextStyle: getRegularStyle(color: ColorManager.black),
    //     alignment: Alignment.center),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      // fillColor: ColorManager.inputsFillDark,
      contentPadding: const EdgeInsetsDirectional.only(
        top: AppPadding.p16,
        bottom: AppPadding.p16,
        start: AppPadding.p24,
      ),
      // hintStyle: StyleManager.inputText16.copyWith(
      //   color: ColorManager.tertiaryText,
      // ),
      // labelStyle: StyleManager.inputText16,
      // errorMaxLines: 2,
      // errorStyle: StyleManager.bodyTextMedium14.copyWith(
      //   color: ColorManager.errorColor,
      // ),
      // prefixIconColor: ColorManager.tertiaryText,
      suffixIconColor: ColorManager.whiteColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          AppSize.s20,
        ),
        borderSide: const BorderSide(
          // color: ColorManager.inputsFillDark,
          width: AppSize.s1_5,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          AppSize.s20,
        ),
        borderSide: const BorderSide(
          // color: ColorManager.inputsFillDark,
          width: AppSize.s1_5,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          // color: ColorManager.inputsFillDark,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s20,
          ),
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          // color: ColorManager.errorColor,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s20,
          ),
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          // color: ColorManager.errorColor,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s20,
          ),
        ),
      ),
    ),
  ),
};
