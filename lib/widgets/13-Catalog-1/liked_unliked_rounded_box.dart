// import 'package:zenazon/app/utility/consts.dart';

// class LikedUnlikedRoundedBox extends StatelessWidget {
//   const LikedUnlikedRoundedBox({
//     super.key,
//     required this.liked,
//   });

//   final bool liked;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: liked
//           ? Container(
//               decoration: BoxDecoration(boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 2,
//                   blurRadius: 3,
//                   offset: const Offset(0, 3), // changes position of shadow
//                 ),
//               ], color: AppColors.whiteColor, shape: BoxShape.circle),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Icon(Icons.favorite_rounded,
//                     color: AppColors.redColor, size: 18),
//               ))
//           : Container(
//               decoration: BoxDecoration(boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 2,
//                   blurRadius: 3,
//                   offset: const Offset(0, 3), // changes position of shadow
//                 ),
//               ], color: AppColors.whiteColor, shape: BoxShape.circle),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Icon(Icons.favorite_border_sharp,
//                     color: AppColors.blackColor, size: 18),
//               )),
//     );
//   }
// }

import 'package:zenazon/app/utility/consts.dart';

class LikedUnlikedRoundedBox extends StatelessWidget {
  LikedUnlikedRoundedBox({super.key});

  final LikeController likeController =
      Get.put(LikeController()); // Create or find a Controller

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: likeController.toggleLike, // Call toggleLike from the controller
      child: Obx(() => SizedBox(
            // Use Obx widget to listen to changes
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: AppColors.whiteColor,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  likeController.liked.value // Reactively check the liked state
                      ? Icons.favorite_rounded
                      : Icons.favorite_border_sharp,
                  color:
                      likeController.liked.value // Change the color reactively
                          ? AppColors.redColor
                          : AppColors.blackColor,
                  size: 18,
                ),
              ),
            ),
          )),
    );
  }
}

class LikeController extends GetxController {
  var liked = false.obs; // .obs makes it observable

  void toggleLike() {
    liked.value = !liked.value; // Toggle the liked state
  }
}
