import 'package:get/get.dart';

import '../controllers/no17_filter_list_controller.dart';

class No17FilterListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<No17FilterListController>(
      () => No17FilterListController(),
    );
  }
}
