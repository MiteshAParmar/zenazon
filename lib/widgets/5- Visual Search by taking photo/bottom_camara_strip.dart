import 'package:zenazon/app/utility/consts.dart';

class BottomCamaraStrip extends StatefulWidget {
  const BottomCamaraStrip({
    super.key,
  });

  @override
  State<BottomCamaraStrip> createState() => _BottomCamaraStripState();
}

class _BottomCamaraStripState extends State<BottomCamaraStrip> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: AppColors.whiteColor,
        child: Padding(
          padding: EdgeInsets.only(top: 1.5.h, bottom: 4.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //---------FLASH----------------------------------------------------------------
              Container(
                //--container to make the icon clickable
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.slotBackColor),
                child: Padding(
                  padding: EdgeInsets.all(1.h),
                  child: Icon(Icons.flash_on,
                      size: 20.dp, color: AppColors.blackColor),
                ),
              ),
              //---------CAMERA---------------------------------------------------------------
              Container(
                //--container to make the icon clickable
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.redColor),
                child: Padding(
                  padding: EdgeInsets.all(1.5.h),
                  child: Icon(
                    Icons.camera_alt_rounded,
                    size: 20.dp,
                    color: Colors.white,
                  ),
                ),
              ),
              //---------FLIP CAMERA----------------------------------------------------------
              Container(
                //--container to make the icon clickable
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.slotBackColor),
                child: Padding(
                  padding: EdgeInsets.all(1.h),
                  child: Icon(Icons.flip_camera_android_outlined,
                      size: 20.dp, color: AppColors.blackColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
