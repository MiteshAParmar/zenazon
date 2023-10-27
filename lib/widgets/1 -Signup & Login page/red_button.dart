import 'package:get/get.dart';
import 'package:zenazon/app/utility/consts.dart';

class RedButton extends StatelessWidget {
  final String title;
  const RedButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 5,
            shadowColor: AppColors.redColor.withOpacity(.5),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            backgroundColor: AppColors.redColor),
        onPressed: () {
          Get.back();
        },
        child: Padding(
          padding: EdgeInsets.only(top: 1.5.h, bottom: 1.5.h),
          child: Text(
            title,
            style: GoogleFonts.montserrat(
                fontSize: 12.dp,
                fontWeight: FontWeight.w500,
                color: AppColors.whiteColor),
          ),
        ),
      ),
    );
  }
}
