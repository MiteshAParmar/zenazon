import 'package:get/get.dart';
import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/app/utility/lists.dart';

import 'catalog2tile2.dart';

class Catalog2GridViewItemBuilder extends StatelessWidget {
  const Catalog2GridViewItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: Get.width,
        height: Get.height * .8,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 3,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 9 / 16,
          ),
          itemCount: catalog2_itemlist.length,
          itemBuilder: (BuildContext context, int index) {
            return Catalog2tile2(
              itemname: catalog2_itemlist[index]['itemname'].toString(),
              brand: catalog2_itemlist[index]['brand'].toString(),
              price: catalog2_itemlist[index]['price'].toString(),
              image: catalog2_itemlist[index]['image'].toString(),
              rating: int.parse(catalog2_itemlist[index]['rating'].toString()),
            );
          },
        ),
      ),
    );
  }
}
