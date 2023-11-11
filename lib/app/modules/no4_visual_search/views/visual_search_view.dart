// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/widgets/1%20-Signup%20&%20Login%20page/transparent_button.dart';

import '../../../../widgets/1 -Signup & Login page/red_button.dart';
import '../controllers/visual_search_controller.dart';

class VisualSearchView extends GetView<VisualSearchController> {
  const VisualSearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldbg,
        // title: Text('VisualSearchView'),
        title: Text(
          'Visual Search',
          style: GoogleFonts.montserrat(
              fontSize: 16.dp,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // The background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/visual_search_background.png',
              fit: BoxFit.cover,
            ),
          ),
          // Any other widgets can go here, above the background
          Center(
            child: Padding(
              padding: EdgeInsets.all(2.0.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Search for an outfit by \ntaking a photo or uploading\nan image!',
                    style: GoogleFonts.montserrat(
                      fontSize: 18.dp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  const RedButton(title: 'TAKE A PHOTO'),
                  SizedBox(
                    height: 2.h,
                  ),
                  const Transparentutton(title: 'UPLOAD AN IMAGE'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
