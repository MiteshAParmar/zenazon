import 'package:get/get.dart';

import '../controllers/catatories_controller.dart';

class CatatoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CatatoriesController>(
      () => CatatoriesController(),
    );
  }
}
