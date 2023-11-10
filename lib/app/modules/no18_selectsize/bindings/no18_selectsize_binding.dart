import 'package:get/get.dart';

import '../controllers/no18_selectsize_controller.dart';

class No18SelectsizeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<No18SelectsizeController>(
      () => No18SelectsizeController(),
    );
  }
}
