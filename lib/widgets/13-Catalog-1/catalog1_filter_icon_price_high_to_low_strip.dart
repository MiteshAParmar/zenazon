import 'package:zenazon/app/utility/consts.dart';

class Catalog1FilterIconAndPriceHighToLowStrip extends StatelessWidget {
  const Catalog1FilterIconAndPriceHighToLowStrip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.disbaledButtonColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //-----------------FILTER ICON & filter text-----------------
            Row(
              children: [
                Icon(
                  Icons.filter_list,
                  color: AppColors.blackColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text('Filters',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.dp,
                          color: AppColors.blackColor)),
                ),
              ],
            ),
            //-----------------SWAP VERT ICON & PRICE HIGHT TO LOW texts-----------------
            Row(
              children: [
                Icon(
                  Icons.swap_vert,
                  color: AppColors.blackColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text('Price: Lowest to high',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.dp,
                          color: AppColors.blackColor)),
                ),
              ],
            ),
            //-----------------GRID ICON-----------------
            Icon(Icons.grid_view, color: AppColors.blackColor),
          ],
        ),
      ),
    );
  }
}
