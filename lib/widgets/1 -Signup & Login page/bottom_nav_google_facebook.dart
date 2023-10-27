import 'package:get/get.dart';
import 'package:zenazon/app/utility/consts.dart';

class BottomNavigationwithGoogleFacebook extends StatelessWidget {
  final String title;
  const BottomNavigationwithGoogleFacebook({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 18.h,
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
                color: AppColors.blackColor,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          //-----------------------------

          SizedBox(height: 2.h),
          //---------SOCIAL ACCOUNTS ICONS ----------------------------------------

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Get.back(),
                child: Container(
                  width: 27.w,
                  height: 8.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: AppColors.whiteColor,
                  ),
                  child: Center(
                    child: Image(
                      fit: BoxFit.cover,
                      height: 5.h,
                      width: 5.h,
                      image: const AssetImage('assets/images/google_G.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              InkWell(
                onTap: () => Get.back(),
                child: Container(
                  width: 27.w,
                  height: 8.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: AppColors.whiteColor,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          fit: BoxFit.cover,
                          width: 3.h,
                          height: 3.h,
                          image:
                              const AssetImage('assets/images/facebook_F.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
