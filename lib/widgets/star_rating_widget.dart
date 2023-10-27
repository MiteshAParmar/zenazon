// import 'package:zenazon/app/utility/consts.dart';

// class StarRatingWidget extends StatelessWidget {
//   final int rating;
//   final Color color;
//   const StarRatingWidget({
//     super.key,
//     required this.rating,
//     required this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Icon(Icons.star, color: AppColors.starcolor, size: 15.dp),
//         Icon(Icons.star, color: AppColors.starcolor, size: 15.dp),
//         Icon(Icons.star, color: AppColors.starcolor, size: 15.dp),
//         Icon(Icons.star, color: AppColors.starcolor, size: 15.dp),
//         Icon(Icons.star, color: AppColors.starcolor, size: 15.dp),
//         Text(
//           '(10)',
//           style: GoogleFonts.montserrat(
//             color: AppColors.disbaledButtonColor,
//             fontSize: 12.dp,
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StarRatingWidget extends StatelessWidget {
  final int rating;
  final Color color;
  final int maxRating;

  const StarRatingWidget({
    Key? key,
    required this.rating,
    required this.color,
    this.maxRating = 5, // Default max rating is 5
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          maxRating,
          (index) => Icon(
            index < rating ? Icons.star : Icons.star_border,
            color: color,
            size: 15, // You can change this to your `.dp` format
          ),
        ),
        Text(
          '($rating)',
          style: GoogleFonts.montserrat(
            color: color,
            fontSize: 12, // You can change this to your `.dp` format
          ),
        ),
      ],
    );
  }
}
