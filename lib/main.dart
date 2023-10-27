import 'package:flutter/material.dart';

import 'package:flutter_sizer/flutter_sizer.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(FlutterSizer(builder: (context, orientation, deviceType) {
    return GetMaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }));
}
