import 'package:zenazon/app/utility/consts.dart';

class Mainpage1Banner extends StatelessWidget {
  const Mainpage1Banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 400.dp,
          child: Image.asset(
            'assets/images/mainpage1_Banner.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 4.h,
          left: 2.h,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fashion \nsale',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    // fontSize: 24.sp, // adjust size as needed
                    fontWeight: FontWeight.w400,
                    fontSize: 35.dp,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.redColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: .5.h, bottom: .5.h, left: 5.h, right: 5.h),
                    child: Text(
                      'Check',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.dp,
                          color: AppColors.whiteColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Positioned(
        //   bottom: 1.h,
        //   child: Mainpage1BottomItemStrip(),
        // ),
      ],
    );
  }
}
