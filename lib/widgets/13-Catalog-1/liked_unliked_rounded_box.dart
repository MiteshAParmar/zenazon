import 'package:zenazon/app/utility/consts.dart';

class LikedUnlikedRoundedBox extends StatelessWidget {
  const LikedUnlikedRoundedBox({
    super.key,
    required this.liked,
  });

  final bool liked;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: liked
          ? Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ], color: AppColors.whiteColor, shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.favorite_rounded,
                    color: AppColors.redColor, size: 18),
              ))
          : Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ], color: AppColors.whiteColor, shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.favorite_border_sharp,
                    color: AppColors.blackColor, size: 18),
              )),
    );
  }
}
