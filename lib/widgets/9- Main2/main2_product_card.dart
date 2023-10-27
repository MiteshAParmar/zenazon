// ignore_for_file: prefer_const_constructors

import 'package:zenazon/app/utility/consts.dart';

import '../star_rating_widget.dart';

class ProductCard extends StatelessWidget {
  final int rating;
  final String itemCategory;
  final String itemName;
  final String actualPrice;
  final String discountedPrice;
  final String itemImage;

  const ProductCard({
    Key? key,
    required this.rating,
    required this.itemCategory,
    required this.itemName,
    required this.actualPrice,
    required this.discountedPrice,
    required this.itemImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.w, right: 1.w),
      child: Container(
        width: 38.w,
        height: 33.h,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.disbaledButtonColor.withAlpha(50),
            width: 1.dp,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              child: Image.asset(
                itemImage,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.dp, right: 5.dp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StarRatingWidget(
                    rating: rating,
                    color: AppColors.starcolor,
                  ),
                  Text(
                    itemCategory,
                    style: GoogleFonts.montserrat(
                      color: AppColors.disbaledButtonColor,
                      fontSize: 12.dp,
                    ),
                  ),
                  Text(
                    itemName,
                    style: GoogleFonts.montserrat(
                      color: AppColors.bodyContentColor,
                      fontSize: 15.dp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '\$ $actualPrice',
                        style: GoogleFonts.montserrat(
                          color: AppColors.disbaledButtonColor,
                          fontSize: 12.dp,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        ' \$ $discountedPrice',
                        style: GoogleFonts.montserrat(
                          color: AppColors.bodyContentColor,
                          fontSize: 12.dp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
