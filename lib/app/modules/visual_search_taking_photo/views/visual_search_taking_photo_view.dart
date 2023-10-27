import 'package:get/get.dart';
import 'package:zenazon/widgets/5-%20Visual%20Search%20by%20taking%20photo/bottom_camara_strip.dart';

import '../../../utility/consts.dart';
import '../controllers/visual_search_taking_photo_controller.dart';

class VisualSearchTakingPhotoView
    extends GetView<VisualSearchTakingPhotoController> {
  const VisualSearchTakingPhotoView({Key? key}) : super(key: key);
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

          const BottomCamaraStrip(),
        ],
      ),
    );
  }
}
