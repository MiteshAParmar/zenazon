import 'package:get/get.dart';
import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/app/utility/lists.dart';

class FilterCatagoryStrip extends StatelessWidget {
  const FilterCatagoryStrip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CatagorySelectorcontroller controller =
        Get.put(CatagorySelectorcontroller());
    return Center(
      child: Column(
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
              "Catagory",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
            width: double.infinity,
            child: GridView.builder(
              itemCount: allcatagories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3 / 1.4,
                crossAxisSpacing: 1,
                mainAxisSpacing: 2,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    if (controller.selectedSizes
                        .contains(allcatagories[index])) {
                      controller.selectedSizes.remove(allcatagories[index]);
                    } else {
                      controller.selectedSizes.add(allcatagories[index]);
                    }
                  },
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      //------OBX--------------------------------------------------------------------//
                      child: Obx(
                        () => Center(
                          child: Container(
                            width: 25.w,
                            height: 6.h,
                            decoration: BoxDecoration(
                              color: controller.selectedSizes
                                      .contains(allcatagories[index])
                                  ? Colors.red
                                  : Colors.white,
                              border: Border.all(
                                color: controller.selectedSizes
                                        .contains(allcatagories[index])
                                    ? Colors.red
                                    : AppColors.disbaledButtonColor,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  allcatagories[index],
                                  style: TextStyle(
                                    fontSize: 15.dp,
                                    fontWeight: FontWeight.w500,
                                    color: controller.selectedSizes
                                            .contains(allcatagories[index])
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

//-----CONTROLLER-----//

class CatagorySelectorcontroller extends GetxController {
  var values = const RangeValues(70, 150).obs;
  RxList<String> selectedSizes = <String>[].obs;
}
