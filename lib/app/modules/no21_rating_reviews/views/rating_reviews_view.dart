// ignore_for_file: avoid_print

import 'package:webview_flutter/webview_flutter.dart';
import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/app/utility/strings.dart';
import 'package:zenazon/widgets/21-Rating%20&%20Reviews/no21_bottom_sheet_with_gradient.dart';
import 'package:zenazon/widgets/21-Rating%20&%20Reviews/no21_checkbox_withphoto.dart';
import 'package:zenazon/widgets/21-Rating%20&%20Reviews/no21_ratings_pattern.dart';
import 'package:zenazon/widgets/21-Rating%20&%20Reviews/no21_review_text_box.dart';

import '../controllers/rating_reviews_controller.dart';

class RatingReviewsView extends GetView<RatingReviewsController> {
  RatingReviewsView({Key? key}) : super(key: key);
  WebViewController wcontroller = WebViewController()
    ..setBackgroundColor(Colors.red)
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(NavigationDelegate(onProgress: (progress) {
      print(progress);
    }))
    ..clearCache()
    ..loadRequest(
      Uri.parse(myurl),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldbg,
        // title: const Text('No21 -RatingReviewsView'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        BigText('Rating & Reviews', textAlign: TextAlign.left),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const No21StarBarPattern(),
                    const SizedBox(height: 30),
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
                    const SizedBox(height: 10),
                    const No21ReviewsTextBox(),
                    const SizedBox(height: 10),
                    const No21ReviewsTextBox(),
                    const SizedBox(height: 10),
                    const No21ReviewsTextBox(),
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
