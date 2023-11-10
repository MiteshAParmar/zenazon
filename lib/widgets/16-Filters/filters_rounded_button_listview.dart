import 'package:get/get.dart';
import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/app/utility/lists.dart';

import 'filter_button_listviewbuilder_controller.dart';

class FiltersRoundedButtonListViewBuilder extends StatelessWidget {
  const FiltersRoundedButtonListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FiltersRoundedButtonController());

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
            "Colors",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 45.dp,
          width: Get.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: filter_buttons_colors.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  controller.selectedIndex.value = index;
                  print('Selected Color: ${filter_buttons_colors[index]}');
                },
                child: Obx(
                  () => Container(
                    width: 38.dp,
                    height: 10.dp,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: controller.selectedIndex.value == index
                            ? Colors.red
                            : Colors.transparent,
                        width: 1.dp,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: filter_buttons_colors[index],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
