import 'package:get/get.dart';

import '../controllers/no20_productcart_selectsize_controller.dart';

class No20ProductcartSelectsizeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<No20ProductcartSelectsizeController>(
      () => No20ProductcartSelectsizeController(),
    );
  }
}
