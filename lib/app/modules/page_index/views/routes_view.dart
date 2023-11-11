// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zenazon/app/modules/no1_signup/views/signup_view.dart';
import 'package:zenazon/app/modules/no0_temp_widgets/views/temp_widgets_view.dart';
import 'package:zenazon/app/routes/app_pages.dart';

import '../controllers/routes_controller.dart';

class RoutesView extends GetView<RoutesController> {
  const RoutesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    Get.to(() => TempWidgetsView())
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '0-Temp Widgets',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => const SignupView())
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '1-Sign up',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/login')?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '2-Login',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.FORGOT_PASSWORD)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '3-Forgot Password',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.VISUAL_SEARCH)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '4-Visual Search',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.VISUAL_SEARCH_TAKING_PHOTO)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '5-Visual Search Taking Photo',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.VISUAL_SEARCH_CROP_ITEM)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '6-Visual Search Crop item',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.VISUAL_SEARCH_FINDING)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '7-Visual Search finding',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.MAINPAGE_1)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '8-Main Page -1',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.MAIN2)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '9-Main-2',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.MAIN3)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '10-Main-3',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.CATATORIES)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '11-Catagories',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.CATAGORIES2)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '12-Catagories 2',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.CATALOG1)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '13-Catalog -1',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.CATALOG2)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '14-Catalog -2',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.SHORTBY)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '15- ShortBy',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.NO16_FILTERS)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '16- Filters',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.NO17_FILTER_LIST)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '17- Filters List',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.NO18_SELECTSIZE)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '18- Select Size',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.NO19_PRODUCT_CARD)
                        ?.then((value) => controller.onInit());
                  },
                  child: Text(
                    '19- Product Card',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
