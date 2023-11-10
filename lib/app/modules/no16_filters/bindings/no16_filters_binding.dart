import 'package:get/get.dart';

import '../controllers/no16_filters_controller.dart';

class No16FiltersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<No16FiltersController>(
      () => No16FiltersController(),
    );
  }
}
