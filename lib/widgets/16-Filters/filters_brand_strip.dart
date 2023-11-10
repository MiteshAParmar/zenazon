// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:zenazon/app/utility/consts.dart';

class FilterBrandStrip extends StatelessWidget {
  const FilterBrandStrip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Brand",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Adidas Originals, Jack & Jones , Oliver",
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.disbaledButtonColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 20.dp,
          )
        ],
      ),
    );
  }
}
