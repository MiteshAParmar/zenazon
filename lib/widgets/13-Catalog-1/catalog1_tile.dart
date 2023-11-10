import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/widgets/star_rating_widget.dart';

import 'liked_unliked_rounded_box.dart';

class Catalog1Tile extends StatelessWidget {
  final String itemname;
  final String brandname;
  final String price;
  final String image;
  final int rating;
  final bool liked = true;
  const Catalog1Tile({
    super.key,
    required this.itemname,
    required this.brandname,
    required this.price,
    required this.image,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 18.h,
              color: Colors.transparent,
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              height: 15.h,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(0.5),
                //     spreadRadius: 2,
                //     blurRadius: 3,
                //     offset: const Offset(0, 3), // changes position of shadow
                // //   ),
                // ],
                border: Border.all(
                  width: .2,
                  color: AppColors.disbaledButtonColor,
                ),
              ),
              child: Row(
                children: [
                  //-------Image-------
                  Expanded(
                      flex: 3,
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      )),
                  //--
                  //--

                  //--
                  //--

                  //-------Details-------

                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.only(left: 3.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //-------Item Name-------
                          Text(
                            itemname,
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: AppColors.blackColor),
                          ),
                          //-------Brand Name-------
                          Text(
                            brandname,
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: AppColors.disbaledButtonColor),
                          ),
                          StarRatingWidget(
                              rating: rating, color: AppColors.starcolor),
                          //-----PRICE------
                          Text(
                            '$price\$',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: AppColors.blackColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 13,
              right: 0,
              child: LikedUnlikedRoundedBox(liked: liked),
            ),
          ],
        ),
      ],
    );
  }
}
