// ignore_for_file: prefer_const_constructors

import 'package:zenazon/app/modules/no20_productcart_selectsize/controllers/no20_productcart_selectsize_controller.dart';
import 'package:zenazon/widgets/13-Catalog-1/liked_unliked_rounded_box.dart';
import 'package:zenazon/widgets/19-%20Product%20Card/no19_dropdown_menu.dart';
import 'package:zenazon/widgets/19-%20Product%20Card/no19_hnm.dart';
import 'package:zenazon/widgets/19-%20Product%20Card/no19_page_view_builder.dart';
import 'package:zenazon/widgets/19-%20Product%20Card/you_can_also_like_thik.dart';
import 'package:zenazon/widgets/8-%20MainPage1/mainpage1_bottom_item_strip.dart';

import '../../../../widgets/18-Select Size/no18_bottomsheet.dart';
import '../../../utility/consts.dart';

// other imports...

class No20ProductcartSelectsizeView
    extends GetView<No20ProductcartSelectsizeController> {
  const No20ProductcartSelectsizeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(No18Sizecontroller());
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
            onPressed: () {
              No18BottomSheet().showSortOptions(context);
            },
            icon: const Icon(Icons.sort),
          ),
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
