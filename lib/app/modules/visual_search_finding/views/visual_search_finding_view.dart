// ignore_for_file: prefer_const_constructors

import 'package:zenazon/app/utility/consts.dart';

import '../controllers/visual_search_finding_controller.dart';

class VisualSearchFindingView extends GetView<VisualSearchFindingController> {
  const VisualSearchFindingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbg,
      appBar: AppBar(backgroundColor: AppColors.scaffoldbg, centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              size: 60.dp,
              color: AppColors.redColor,
            ),
            Text(
              'Finding similar \nproducts...',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontSize: 23.dp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.blackColor),
            ),
          ],
        ),
      ),
    );
  }
}
