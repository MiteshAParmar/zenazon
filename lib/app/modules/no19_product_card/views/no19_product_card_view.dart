// ignore_for_file: prefer_const_constructors

import 'package:zenazon/app/utility/lists.dart';
import 'package:zenazon/widgets/13-Catalog-1/liked_unliked_rounded_box.dart';
import 'package:zenazon/widgets/19-%20Product%20Card/no19_dropdown_menu.dart';
import 'package:zenazon/widgets/19-%20Product%20Card/ratings_pattern.dart';

import '../../../utility/consts.dart';
import '../controllers/no19_product_card_controller.dart';
// other imports...

class No19ProductCardView extends GetView<No19ProductCardController> {
  const No19ProductCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Short dress',
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                No19DropdownMenu(items: allSizes, initialValue: allSizes[0]),
                No19DropdownMenu(
                    items: allcatagories, initialValue: allcatagories[0]),
                LikedUnlikedRoundedBox(liked: true),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                StarBarPattern(
                  starcount: 2,
                ),
                StarBarPattern(
                  starcount: 4,
                ),
                StarBarPattern(
                  starcount: 3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
