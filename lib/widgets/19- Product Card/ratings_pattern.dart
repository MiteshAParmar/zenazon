// ignore_for_file: prefer_const_constructors

import 'package:zenazon/app/utility/colors.dart';
import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/widgets/star_rating_widget.dart';

import '../../app/utility/consts.dart';

class StarBarPattern extends StatelessWidget {
  final int starcount;
  const StarBarPattern({super.key, required this.starcount});

  @override
  Widget build(BuildContext context) {
    starcountset(starcount) {
      if (starcount <= 5) {
        return starcount;
      } else {
        return 5;
      }
    }

    double starwidth = 30 * double.parse((starcountset(starcount).toString()));
    List<Widget> starlist = List.generate(starcountset(starcount), (index) {
      return Icon(Icons.star, color: AppColors.starcolor, size: 15.dp);
    });
    print(starwidth);
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: starlist,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: starlist,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: starlist,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: starlist,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: starlist,
        ),
      ],
    );
  }
}
