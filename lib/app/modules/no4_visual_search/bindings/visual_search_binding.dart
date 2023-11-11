import 'package:get/get.dart';

import '../controllers/visual_search_controller.dart';

class VisualSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VisualSearchController>(
      () => VisualSearchController(),
    );
  }
}
