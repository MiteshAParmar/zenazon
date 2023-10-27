import 'package:zenazon/app/utility/consts.dart';

import 'mainpage1_item.dart';

class Mainpage1BottomItemStrip extends StatelessWidget {
  const Mainpage1BottomItemStrip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          MainPage1Item(
              imagepath: 'assets/images/mainpage1_tshirt.png',
              price: '2000',
              itemname: 'T-Shirt'),
          MainPage1Item(
              imagepath: 'assets/images/mainpage1_blouse.png',
              price: '35',
              itemname: 'Blouse'),
          MainPage1Item(
              imagepath: 'assets/images/mainpage1_eveningdress.png',
              price: '20',
              itemname: 'Evening Dress'),
          MainPage1Item(
              imagepath: 'assets/images/mainpage1_tshirt.png',
              price: '200',
              itemname: 'T-Shirt'),
          MainPage1Item(
              imagepath: 'assets/images/mainpage1_blouse.png',
              price: '21',
              itemname: 'Blouse'),
          MainPage1Item(
              imagepath: 'assets/images/mainpage1_eveningdress.png',
              price: '20',
              itemname: 'Evening Dress'),
        ],
      ),
    );
  }
}
