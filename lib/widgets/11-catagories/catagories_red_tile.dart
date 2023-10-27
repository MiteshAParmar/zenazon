import 'package:zenazon/app/utility/consts.dart';

class CatagoriesRedTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color color;
  const CatagoriesRedTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 17.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                style: GoogleFonts.montserrat(
                  color: AppColors.whiteColor,
                  fontSize: 20.dp,
                  fontWeight: FontWeight.w600,
                )),
            Text(subTitle,
                style: GoogleFonts.montserrat(
                  color: AppColors.whiteColor,
                  fontSize: 15.dp,
                  fontWeight: FontWeight.w400,
                )),
          ],
        ),
      ),
    );
  }
}
