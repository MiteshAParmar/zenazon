import 'package:get/get.dart';

import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/app/utility/lists.dart';
import 'package:zenazon/widgets/13-Catalog-1/catalog1_tile.dart';
import 'package:zenazon/widgets/bottom_nav_bar.dart';

import '../../../../widgets/13-Catalog-1/Catalog1FilterIconAndPriceHighToLow_Strip.dart';
import '../../../../widgets/13-Catalog-1/womans_tops_and_horizontal_listview.dart';
import '../controllers/catalog1_controller.dart';

class Catalog1View extends GetView<Catalog1Controller> {
  const Catalog1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.search),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              ///----Womans TOPS--HORIZONTAL LISTVIEW WITH BLACK BOTTONS--
              const Catalog1WomansTopAndHorizontalListView(),
              SizedBox(
                height: 10.dp,
              ),

              ///--- FILTER ICON, PRICE LOW TO HIGH, GRID ICON------
              const Catalog1FilterIconAndPriceHighToLowStrip(),

              ///-----------
              SizedBox(
                height: 10.dp,
              ),

              ///----LISTVIEW BUILDER for ITEMS----
              ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 4);
                },
                itemCount: catalog1_itemlist.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  var item = catalog1_itemlist[index];

                  return Catalog1Tile(
                    itemname: item['itemname'].toString(),
                    brandname: item['brand'].toString(),
                    price: item['price'].toString(),
                    image: item['image'].toString(),
                    rating: int.parse(item['rating'].toString()),
                  );
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
