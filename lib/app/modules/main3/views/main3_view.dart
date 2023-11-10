// ignore_for_file: sized_box_for_whitespace

import 'package:get/get.dart';
import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/widgets/10-main3/main3_fullpage_tiles_banner.dart';
import '../../../../widgets/bottom_nav_bar.dart';
import '../controllers/main3_controller.dart';

class Main3View extends GetView<Main3Controller> {
  const Main3View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Main3FullpageTilesBanner(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
