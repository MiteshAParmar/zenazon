import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenazon/app/utility/lists.dart';

class No19PageViewBuilder extends StatelessWidget {
  final PageController pageController = PageController(
    viewportFraction: 0.8,
  );

  No19PageViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.6, // 60% of the screen height
      child: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        itemCount: catalog2_itemlist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 1.5), // Adjust the padding as needed
            child: ClipRRect(
              // borderRadius:
              //     BorderRadius.circular(8), // Optional rounded corners
              child: Image.network(
                catalog2_itemlist[index]['image'].toString(),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
