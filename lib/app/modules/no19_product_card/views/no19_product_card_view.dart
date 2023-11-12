// ignore_for_file: prefer_const_constructors

import 'package:zenazon/widgets/13-Catalog-1/liked_unliked_rounded_box.dart';
import 'package:zenazon/widgets/19-%20Product%20Card/no19_dropdown_menu.dart';
import 'package:zenazon/widgets/19-%20Product%20Card/no19_hnm.dart';
import 'package:zenazon/widgets/19-%20Product%20Card/no19_page_view_builder.dart';
import 'package:zenazon/widgets/19-%20Product%20Card/you_can_also_like_thik.dart';
import 'package:zenazon/widgets/8-%20MainPage1/mainpage1_bottom_item_strip.dart';

import '../../../utility/consts.dart';
import '../controllers/no19_product_card_controller.dart';

// other imports...

class No19ProductCardView extends GetView<No19ProductCardController> {
  const No19ProductCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldbg,
        title: Text(
          'Short dress',
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: AppColors.blackColor,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //--------PAGE VIEW BUILDER --------//
            No19PageViewBuilder(),
            SizedBox(height: 10),
            //--------Two DROP DOWN MENUS & LIKED/UNLIKED BOX--------//
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                No19DropdownMenu(items: allSizes, initialValue: allSizes[0]),
                No19DropdownMenu(
                    items: allcatagories, initialValue: allcatagories[0]),
                LikedUnlikedRoundedBox(),
              ],
            ),
            SizedBox(height: 20),
            //---------HandMwith$strip---------//

            No19HnMBox(),
            YouCanAlsoLikeThis(),
            SizedBox(height: 10),
            Mainpage1BottomItemStrip(),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
