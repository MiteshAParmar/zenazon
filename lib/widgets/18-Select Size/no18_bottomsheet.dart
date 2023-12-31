// ignore_for_file: sized_box_for_whitespace

import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/widgets/1%20-Signup%20&%20Login%20page/red_button.dart';

// Make sure to put this controller in the dependency tree before opening the bottom sheet,
// typically in the page where you're planning to open the bottom sheet from.
class No18Sizecontroller extends GetxController {
  var selectedSize = <String>[].obs;
}

class No18BottomSheet extends StatelessWidget {
  // Find the controller already put in the dependency tree.
  final No18Sizecontroller controller = Get.find<No18Sizecontroller>();

  No18BottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // You can give your bottom sheet a specific height if needed
    return Wrap(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                //------Gray Line on top of the Sort by text-------
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 5,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Text(
                "Select Size",
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              // color: Colors.red.shade50,
              height: 17.h,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2.6, // Aspect ratio of each grid item
                  mainAxisSpacing: 10, // Spacing between items in the main axis
                  crossAxisSpacing:
                      10, // Spacing between items in the cross axis
                ),
                itemCount: allSizes.length - 5,
                padding:
                    const EdgeInsets.all(10), // Padding inside the GridView
                itemBuilder: (context, index) {
                  // The builder for each grid item
                  return GestureDetector(
                    onTap: () {
                      if (controller.selectedSize.contains(allSizes[index])) {
                        controller.selectedSize.remove(allSizes[index]);
                      } else {
                        controller.selectedSize.add(allSizes[index]);
                      }
                    },
                    child: Obx(
                      () => Container(
                        decoration: BoxDecoration(
                          color:
                              controller.selectedSize.contains(allSizes[index])
                                  ? Colors.red
                                  : Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            allSizes[index],
                            style: TextStyle(
                              color: controller.selectedSize
                                      .contains(allSizes[index])
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(
                    "Size info",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: RedButton(title: 'ADD TO CART'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ],
    );
  }

  // Helper method to show the bottom sheet from anywhere in your code.
  void showSortOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return this; // Return the current instance of the bottom sheet
      },
    );
  }
}

// // Sample sizes for the grid view
// List<String> allSizes = ["S", "M", "L", "XL", "XXL"];
