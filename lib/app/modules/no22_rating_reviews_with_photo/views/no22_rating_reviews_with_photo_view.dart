import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/app/utility/strings.dart';
import 'package:zenazon/widgets/22-%20Rating%20Reviews%20with%20Photo/no22_image_view_builder.dart';

import '../../../../widgets/21-Rating & Reviews/no21_bottom_sheet_with_gradient.dart';
import '../../../../widgets/21-Rating & Reviews/no21_checkbox_withphoto.dart';
import '../../../../widgets/22- Rating Reviews with Photo/no22_textbox_with_photo.dart';
import '../controllers/no22_rating_reviews_with_photo_controller.dart';

class No22RatingReviewsWithPhotoView
    extends GetView<No22RatingReviewsWithPhotoController> {
  const No22RatingReviewsWithPhotoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldbg,
        title: const Text('Rating and reviews'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const BigText('8 reviews'),
                        Row(
                          children: [
                            const No21CheckBoxWithPhoto(),
                            SmallText(
                              'with photo',
                              color: AppColors.disbaledButtonColor,
                            )
                          ],
                        ),
                      ],
                    ),
                    const No22TextBoxWithPhoto(),
                    const SizedBox(
                      height: 20,
                    ),
                    const No22TextBoxWithPhoto(),
                    const SizedBox(
                      height: 20,
                    ),
                    const No22TextBoxWithPhoto(),
                    const SizedBox(
                      height: 20,
                    ),
                    const No22TextBoxWithPhoto(),
                  ],
                ),
              ),
            ),
          ),
          const No21BottomSheetWithGradient(),
        ],
      ),
    );
  }
}
