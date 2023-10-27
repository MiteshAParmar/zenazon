import 'package:get/get.dart';

import '../controllers/main2_controller.dart';

class Main2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Main2Controller>(
      () => Main2Controller(),
    );
  }
}
