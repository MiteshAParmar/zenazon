// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/widgets/1%20-Signup%20&%20Login%20page/red_button.dart';

import '../18-Select Size/no18_bottomsheet.dart';

class AddtoCartRedButton extends StatelessWidget {
  const AddtoCartRedButton({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            blurRadius: 10,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: RedButton(
              title: 'ADD TO CART',
              onPressed: () => No18BottomSheet().showSortOptions(context),
            ),
          ),
          Container(
            height: 7,
            width: Get.width * .4,
            decoration: BoxDecoration(
              color: AppColors.blackcofee,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
