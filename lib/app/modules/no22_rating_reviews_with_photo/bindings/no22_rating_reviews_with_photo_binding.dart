import 'package:get/get.dart';

import '../controllers/no22_rating_reviews_with_photo_controller.dart';

class No22RatingReviewsWithPhotoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<No22RatingReviewsWithPhotoController>(
      () => No22RatingReviewsWithPhotoController(),
    );
  }
}
