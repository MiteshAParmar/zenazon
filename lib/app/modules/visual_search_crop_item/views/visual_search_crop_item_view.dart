// ignore_for_file: unused_import

import 'package:get/get.dart';
import 'package:zenazon/widgets/6-%20Visual%20Search%20Crop%20Item/bottom_search_strip.dart';

import '../../../utility/consts.dart';

import '../../../../widgets/5- Visual Search by taking photo/bottom_camara_strip.dart';
import '../controllers/visual_search_crop_item_controller.dart';

class VisualSearchCropItemView extends GetView<VisualSearchCropItemController> {
  const VisualSearchCropItemView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('VisualSearchView'),
        title: Text(
          'Search by taking photo',
          style: GoogleFonts.montserrat(
              fontSize: 16.dp,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // The background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/visual_search_taking_photo.png',
              fit: BoxFit.cover,
            ),
          ),
          // Any other widgets can go here, above the background

          const BottomSearchStrip(),
        ],
      ),
    );
  }
}
