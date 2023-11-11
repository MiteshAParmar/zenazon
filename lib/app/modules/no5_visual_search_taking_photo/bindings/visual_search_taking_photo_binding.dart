import 'package:get/get.dart';

import '../controllers/visual_search_taking_photo_controller.dart';

class VisualSearchTakingPhotoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VisualSearchTakingPhotoController>(
      () => VisualSearchTakingPhotoController(),
    );
  }
}
