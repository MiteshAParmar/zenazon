import 'package:get/get.dart';
import 'package:zenazon/app/utility/consts.dart';

class FilterRangeSlider extends StatelessWidget {
  const FilterRangeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RangeController());
    return Column(
      children: [
        Container(
          width: Get.width,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.grey[100]!,
                Colors.white,
                Colors.white,
                Colors.grey[50]!,
              ],
              stops: const [0, 0.2, 0.8, 1],
            ),
          ),
          child: const Text(
            "Price range",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Obx(
          () => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${controller.values.value.start.toStringAsFixed(0)}',
                    style: GoogleFonts.montserrat(
                      fontSize:
                          15.dp, // Make sure you have extension method for 'dp'
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '\$${controller.values.value.end.toStringAsFixed(0)}',
                    style: GoogleFonts.montserrat(
                      fontSize:
                          15.dp, // Make sure you have extension method for 'dp'
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 1.h),
                child: RangeSlider(
                  min: 70,
                  max: 150,
                  divisions: 8,
                  values: controller.values.value,
                  onChanged: (newvalue) {
                    controller.values.value = newvalue;
                  },
                  activeColor: AppColors.redColor,
                  inactiveColor: AppColors.disbaledButtonColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//---controller defined in the same file

class RangeController extends GetxController {
  var values = const RangeValues(70, 150).obs;
}
