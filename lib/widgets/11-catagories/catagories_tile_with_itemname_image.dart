import 'package:zenazon/app/utility/consts.dart';

class CatagoriesItemtile extends StatelessWidget {
  final String title;

  final String itemimage;

  const CatagoriesItemtile({
    super.key,
    required this.title,
    required this.itemimage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        clipBehavior: Clip
            .antiAlias, //so that image is not clipped, and will be fit in the container
        width: double.infinity,
        height: 17.h,
        decoration: BoxDecoration(
          boxShadow: List.generate(
            10,
            (index) => BoxShadow(
              color: AppColors.greyColor.withOpacity(.2),
              blurRadius: 2,
              offset: Offset(0, 3),
            ),
          ),
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(
          //   color: AppColors.greyColor,
          //   width: .3,
          // ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: AppColors.whiteColor,
                child: Center(
                  child: Text(
                    title,
                    style: GoogleFonts.montserrat(
                      fontSize: 20.dp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Image.asset(
                itemimage,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
