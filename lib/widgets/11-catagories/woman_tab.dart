import 'package:zenazon/app/utility/consts.dart';

import 'catagories_red_tile.dart';
import 'catagories_tile_with_itemname_image.dart';

class WomanTab extends StatelessWidget {
  const WomanTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CatagoriesRedTile(
                color: AppColors.redColor,
                title: 'SUMMER SALES',
                subTitle: 'Up to 50% off'),
            const CatagoriesItemtile(
              title: 'Dresses',
              itemimage: 'assets/images/catatories_woman1.png',
            ),
            const CatagoriesItemtile(
              title: 'Clothes',
              itemimage: 'assets/images/catatories_woman2.png',
            ),
            const CatagoriesItemtile(
              title: 'Shoes',
              itemimage: 'assets/images/catatories_woman3.png',
            ),
            const CatagoriesItemtile(
              title: 'Accessories',
              itemimage: 'assets/images/catatories_woman4.png',
            ),
            const CatagoriesItemtile(
              title: 'Accessories',
              itemimage: 'assets/images/catatories_woman4.png',
            ),
          ],
        ),
      ),
    );
  }
}
