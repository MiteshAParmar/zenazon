import 'package:get/get.dart';

import '../controllers/routes_controller.dart';

class RoutesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoutesController>(
      () => RoutesController(),
    );
  }
}
