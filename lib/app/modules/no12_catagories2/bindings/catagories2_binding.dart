import 'package:get/get.dart';

import '../controllers/catagories2_controller.dart';

class Catagories2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Catagories2Controller>(
      () => Catagories2Controller(),
    );
  }
}
