import 'package:cars/shared/constants.dart';
import 'package:cars/shared/global_config.dart';
import 'package:cars/translation/translation.dart';
import 'package:cars/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() => runApp(



    ScreenUtilInit(
      builder: () =>   GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: LocaleTranslation(), // your translations
          locale:Locale('en', 'US'), // translations will be displayed in that locale
          fallbackLocale: Locale('ar', 'EG'),

          theme: ThemeData(
            fontFamily: EN_FONT,
            primaryColor: PRIMARY_DARK,

          ),
          home: HomeScreen()),
    )
);
