// ignore_for_file: sized_box_for_whitespace, duplicate_ignore

import 'package:zenazon/widgets/19-%20Product%20Card/no19_add_to_cart_red_button.dart';
import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/widgets/star_rating_widget.dart';

class No19HnMBox extends StatelessWidget {
  const No19HnMBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //---------HandM with stars---------//
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    'H&M',
                    fontSize: 32,
                    color: AppColors.blackcofee,
                    textAlign: TextAlign.left,
                  ),
                  BigText(
                    'Short black dress',
                    fontSize: 15,
                    color: AppColors.disbaledButtonColor,
                  ),
                  StarRatingWidget(rating: 5, color: AppColors.starcolor)
                ],
              ),
              //---------Price with $19.99---------//
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  BigText(
                    '\$19.99',
                    fontSize: 32,
                    color: AppColors.blackcofee,
                    textAlign: TextAlign.left,
                  ),
                  BigText(
                    'Size: S',
                    fontSize: 15,
                    color: AppColors.disbaledButtonColor,
                  ),
                  BigText(
                    'Color: Black',
                    fontSize: 15,
                    color: AppColors.disbaledButtonColor,
                  ),
                ],
              ),
            ],
          ),
        ),
        ////--------TEXT DESCRIPTION  short dress.......--------//
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            'Short dress in soft, stretchy jersey with a round neckline, short sleeves and a seam at the waist with a decorative bow. Unlined.',
            textAlign: TextAlign.start,
            style: GoogleFonts.montserrat(
              fontSize: 15,
              color: AppColors.disbaledButtonColor,
            ),
          ),
        ),
        //-----------------ADD TO CART RED BUTTON-----------------//
        const AddtoCartRedButton(),
        // ignore: sized_box_for_whitespace
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmallText(
                  filterlists[index],
                  color: AppColors.blackcofee,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                )
              ],
            ),
          ),
          separatorBuilder: (context, index) => Divider(
            thickness: .2,
            color: AppColors.disbaledButtonColor,
            height: .5.h,
          ),
          itemCount: filterlists.length,
        )
      ],
    );
  }
}
