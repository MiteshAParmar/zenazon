import 'package:get/get.dart';

import '../controllers/catalog1_controller.dart';

class Catalog1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Catalog1Controller>(
      () => Catalog1Controller(),
    );
  }
}
