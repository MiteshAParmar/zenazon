// ignore_for_file: unused_local_variable

import 'package:zenazon/app/utility/consts.dart';

import '../13-Catalog-1/liked_unliked_rounded_box.dart';
import '../star_rating_widget.dart';

class Catalog2ItemTile extends StatelessWidget {
  final String itemname;
  final String brand;
  final String price;
  final String image;
  final int rating;
  final bool liked = true;
  const Catalog2ItemTile({
    super.key,
    required this.itemname,
    required this.brand,
    required this.price,
    required this.image,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          color: Colors.transparent,
          width: MediaQuery.of(context).size.width / 1.5,
          height: MediaQuery.of(context).size.height / 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        softWrap: true,
                        itemname,
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.dp,
                            color: AppColors.blackColor),
                      ),
                      Text(
                        softWrap: true,
                        brand,
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 10.dp,
                            color: AppColors.disbaledButtonColor),
                      ),
                      Text(
                        softWrap: true,
                        '\$ $price',
                      ),
                      StarRatingWidget(
                        rating: rating,
                        color: AppColors.starcolor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height / 6.8,
          right: 0,
          child: const LikedUnlikedRoundedBox(liked: true),
        ),
      ],
    );
  }
}
