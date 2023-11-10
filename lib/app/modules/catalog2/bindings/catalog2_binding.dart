import 'package:get/get.dart';

import '../controllers/catalog2_controller.dart';

class Catalog2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Catalog2Controller>(
      () => Catalog2Controller(),
    );
  }
}
