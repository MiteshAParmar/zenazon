import 'package:get/get.dart';

import '../controllers/main3_controller.dart';

class Main3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Main3Controller>(
      () => Main3Controller(),
    );
  }
}
