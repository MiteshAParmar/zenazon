import 'package:get/get.dart';

import '../controllers/visual_search_finding_controller.dart';

class VisualSearchFindingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VisualSearchFindingController>(
      () => VisualSearchFindingController(),
    );
  }
}
