import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/widgets/1%20-Signup%20&%20Login%20page/red_button.dart';

class No21BottomSheetWithGradient extends StatefulWidget {
  const No21BottomSheetWithGradient({super.key});

  @override
  State<No21BottomSheetWithGradient> createState() =>
      _No21BottomSheetWithGradientState();
}

class _No21BottomSheetWithGradientState
    extends State<No21BottomSheetWithGradient> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 15.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          //--gradient
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              AppColors.whiteColor.withOpacity(.7),
              AppColors.whiteColor.withOpacity(0.0),
            ],
            stops: const [0.0, 1.0],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: SizedBox(
                      height: 50,
                      width: 200,
                      child:
                          RedButton(title: 'Write a Review', onPressed: () {})),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
