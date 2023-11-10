import 'package:get/get.dart';

import '../controllers/shortby_controller.dart';

class ShortbyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShortbyController>(
      () => ShortbyController(),
    );
  }
}
