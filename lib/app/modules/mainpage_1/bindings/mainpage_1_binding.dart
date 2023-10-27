import 'package:get/get.dart';

import '../controllers/mainpage_1_controller.dart';

class Mainpage1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Mainpage1Controller>(
      () => Mainpage1Controller(),
    );
  }
}
