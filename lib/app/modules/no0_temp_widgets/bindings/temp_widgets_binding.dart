import 'package:get/get.dart';

import '../controllers/temp_widgets_controller.dart';

class TempWidgetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TempWidgetsController>(
      () => TempWidgetsController(),
    );
  }
}
