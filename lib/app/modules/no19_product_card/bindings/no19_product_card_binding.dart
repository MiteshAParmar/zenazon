import 'package:get/get.dart';

import '../controllers/no19_product_card_controller.dart';

class No19ProductCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<No19ProductCardController>(
      () => No19ProductCardController(),
    );
  }
}
