import 'package:get/get.dart';
import 'package:zenazon/app/utility/consts.dart';

class Transparentutton extends StatelessWidget {
  final String title;
  const Transparentutton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            side: BorderSide(
                color: AppColors.whiteColor, width: 1.dp), // Outline border
            backgroundColor: Colors.transparent.withOpacity(0)),
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
