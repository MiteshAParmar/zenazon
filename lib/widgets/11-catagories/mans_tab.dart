import 'package:zenazon/app/utility/consts.dart';

import 'catagories_red_tile.dart';
import 'catagories_tile_with_itemname_image.dart';

class MansTab extends StatelessWidget {
  const MansTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CatagoriesRedTile(
                color: AppColors.blueColor,
                title: 'SUMMER SALES',
                subTitle: 'Up to 50% off'),
            const CatagoriesItemtile(
              title: 'Dresses',
              itemimage: 'assets/images/catatories_man1.png',
            ),
            const CatagoriesItemtile(
              title: 'Clothes',
              itemimage: 'assets/images/catatories_man2.png',
            ),
            const CatagoriesItemtile(
              title: 'Shoes',
              itemimage: 'assets/images/catatories_man3.png',
            ),
            const CatagoriesItemtile(
              title: 'Accessories',
              itemimage: 'assets/images/catatories_man4.png',
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
