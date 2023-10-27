import 'package:get/get.dart';

import '../controllers/visual_search_crop_item_controller.dart';

class VisualSearchCropItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VisualSearchCropItemController>(
      () => VisualSearchCropItemController(),
    );
  }
}
